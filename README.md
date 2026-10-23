# CCNotes

A separate Max for Live MIDI effect that combines a continuous pitch gesture with an independent rhythmic gate. It generates ordinary MIDI notes; place an instrument after it or route its voice receivers to hardware. No Tetrachords, harmonic analysis, scale quantizer, or third-party Max external is involved.

## Files and status

Open `dist/CCNotes 1 Voice.amxd` for the prototype or `dist/CCNotes 4 Voices.amxd` for four voices. Keep **both `gesture_core.js` and `gesture_device.js` in the same folder as the AMXDs**. This is an unfrozen distribution folder, not a single self-contained binary. Copy the whole `dist` folder if moving it. Builds automatically install the five AMXDs and their two required support scripts into both User Library locations below, matching the other devices. Changed installed files are backed up in a hidden `.backups` subfolder; unchanged files are left alone. Each installation is checked byte for byte against `dist`.

Companions, used only when needed:

| Device | Purpose |
| --- | --- |
| CCNotes Gate Send | Deliver note gates from another track, assigning a logical channel |
| CCNotes Pitch Send | Deliver CC from another track, assigning a logical channel |
| CCNotes Voice Out | Receive one voice on a dedicated destination track |

The one-voice milestone and four-voice extension share the tested engine. Trigger, tracking, hysteresis, calibration, velocity and 14-bit features are also implemented. Automated tests cover engine behavior, simulated Max adapters, and generated packaging. The four-voice source patch was opened in installed Max 9 and its initial presentation and running diagnostics were visually checked. **Live AMXD loading, page switching, preset recall, transport/bypass delivery, physical Trails/CVM-8 input, and audible hardware output remain acceptance checks.** The standalone Max installation reports saving disabled; this does not establish Live's bundled Max behavior.

## User Library installation

Run `python3 tools/build.py` to build and install automatically:

- `~/Music/Ableton/User Library/Presets/MIDI Effects/Max MIDI Effect/CCNotes/`
- `~/Music/Ableton/User Library/Max4Live/CCNotes/`

In Live, browse User Library → Max4Live → CCNotes, or the MIDI Effects preset location above. Start with `CCNotes 4 Voices.amxd` or `CCNotes 1 Voice.amxd`. All required scripts are installed alongside them. Reload an already-open device after rebuilding to pick up the new version.

Use `python3 tools/build.py --verify-installed` to check both installed copies without changing files. `--no-install` is an explicit distribution-only option for CI or temporary builds. `--install` is accepted for consistency with the other devices and performs the default action.

## Quick start: one voice, separate controller and gate source

1. Create a MIDI track named `Gesture`. Set **MIDI From** to the actual Trails/controller port and its transmitting channel, **Monitor: In**. Load `CCNotes 1 Voice.amxd` followed by a Live instrument. Start with **Group 1**, **Local + receivers**.
2. On the device's **Pitch / Routing** page, set **Pitch CC** to the CC actually emitted by the controller. Set **Pitch Ch 1** initially: Live commonly delivers track MIDI to Max effects on channel 1. Set **Low note 36**, **High note 84** or your preferred chromatic range. These are MIDI note numbers, avoiding octave naming differences.
3. Create a second MIDI track named `Gate`. Set **MIDI From** to the actual gate-source MIDI port and its channel, **Monitor: In**. Load `CCNotes Gate Send.amxd`, **Group 1**, **Logical gate channel 1**. It consumes input; no MIDI To destination is required.
4. Back on `Gesture`, set voice 1 **Gate source: Sender**, **Gate Ch 1**, and **Gate note** to the note emitted by the gate converter. **-1** accepts any note. Default is note 60. On **Articulation**, leave **Gate**, **S&H**, and **Incoming** velocity.
5. Move Trails. `CC input` and `continuous pitch` should change with no notes sounding. Send a gate note-on: a note sounds and `note` displays its saved pitch. Move Trails while holding the gate: the note stays fixed. Release the gate: that saved note releases. The next gate uses the updated pitch.

Do not guess Bela Trails CC assignments or assume semitone-calibrated output. Observe its MIDI and use the transmitted CC number and actual endpoint values. Bela Trails 14-bit output has not been established by this project.

For Neo Trinity through CVM-8, configure and verify the converter separately so each selected physical gate input produces a MIDI note-on at the rising edge and a matching note-off at the falling edge. This device expects **MIDI notes**, not gate CC values or direct CV. Confirm the actual MIDI port, channel and note for each input before assigning it. This project does not change converter firmware, forwarding, or saved configurations.

## Four voices

Replace the one-voice device with `CCNotes 4 Voices.amxd`; use a different Group if both engines remain loaded. Each row is independent. The initial assignments are examples, not claims about Trails or Neo Trinity:

| Voice | Pitch CC | Pitch Ch | Gate note | Gate Ch | Output Ch |
| --- | --- | --- | --- | --- | --- |
| 1 | 1 | 1 | 60 | 1 | 1 |
| 2 | 2 | 1 | 61 | 1 | 2 |
| 3 | 3 | 1 | 62 | 1 | 3 |
| 4 | 4 | 1 | 63 | 1 | 4 |

One Gate Send can carry four distinct gate notes: set every row to **Sender**, **Gate Ch 1**, with a different **Gate note** per row. If gates are distinguished only by physical MIDI channel, make one sender track per source channel; filter that channel in Live's track input, assign sender logical channels 1–4, and set each row's Gate Ch to its logical channel.

Likewise, four different pitch CC numbers can enter the engine track directly. If pitch streams reuse the same CC number on different physical channels, use **Pitch Send** on separate input tracks filtered by those channels. Assign sender logical channels 1–4; on the main device's **Calibration** page select **Pitch source: Sender**, then use the corresponding **Pitch Ch** on the routing page. This restores explicit identity after Live's input routing. Engine track **MIDI From: No Input**, **Monitor: In** is appropriate when both streams arrive through senders.

Mute a voice with **On → Mute**. To isolate a voice, mute the other rows. Active notes release on muting or editing a parameter; isolate before testing shared hardware destinations.

## Four separate destinations

1. On the main device select **Receivers only**, avoiding duplicate local output.
2. Create four MIDI tracks, **Monitor: In**, **MIDI From: No Input**. Load `CCNotes Voice Out.amxd` on each. Match the engine's Group and select Voice 1, 2, 3 or 4.
3. Put a Live instrument after each receiver, or set each track's **MIDI To** to the desired hardware port and **physical MIDI channel**.
4. Verify note-ons and matching note-offs at the receiving instrument or MIDI monitor before connecting the full performance routing. Use distinct physical channels for independent hardware voices.

`Output Ch` sets the generated MIDI bytes. **Do not rely on one ordinary Live track to preserve four independent hardware output channels.** The receiver tracks provide the reliable channel/destination boundary. A single local polyphonic instrument is useful for initial listening, but Live may merge channels: coincident pitches from different voices can then interfere. Use separate receiver tracks/instrument instances for independent same-pitch voices. Do not route the generated output back into either sender or the engine input. Use explicit ports and channels rather than All Ins.

## Controls

All assignments and controls are exposed as saved Live parameters. **Controls** switches among three pages; it does not change musical behavior.

| Page | Controls |
| --- | --- |
| Pitch / Routing | Mute, pitch CC/channel, low/high MIDI pitch, transpose, gate channel/note/source, output channel |
| Articulation | Gate/Trigger, S&H/Continuous, incoming/fixed velocity, fixed velocity value, duration ms, ms/Sync, division, hysteresis, safety duration |
| Calibration | 7/14 bit, input min/max, normal/inverted direction, fallback, local/sender pitch source |

- **Mapping:** clamp the incoming CC to Input min/max, normalize to 0–1, optionally invert, map to Low/High, add transpose, clamp to MIDI 0–127, and round with hysteresis. Set a smaller output range for more usable pitch steps. High below Low is a descending range. Input max must exceed Input min; otherwise pitch is invalid.
- **Gate:** note-on samples current pitch; note-off ends the gate. Velocity-zero note-on counts as note-off. CC alone never opens a new articulation. S&H ignores subsequent pitch changes for the sounding note.
- **Trigger:** every note-on retriggers; incoming note-offs are ignored. Length is milliseconds or 1/1 through 1/64. Sync uses Live tempo sampled at onset; tempo changes do not reschedule an existing trigger. No transport start is required to play.
- **Continuous:** while a note is active, a changed mapped semitone releases the saved old note before starting the new note at its original velocity. Trigger end time and safety deadline remain unchanged. No pitch bend or true legato.
- **Hysteresis:** semitone units, 0–0.49; default 0.12. From note N, move above N+0.5+h or below N−0.5−h to change mapped note. It stabilizes pitch state in both tracking modes. No time smoothing is implemented.
- **14 bit:** choose a standard MSB CC 0–31; LSB is CC+32. Set Input max to 16383 for full range. Both halves must arrive before initial pitch is valid. Later updates latch the other half, so controllers sending MSB then LSB can briefly expose an intermediate value. S&H is the predictable starting point. Unsupported pair numbers produce no valid pitch.
- **Fallback:** -1 means silence until a valid pitch is received; 0–127 explicitly allows that fallback pitch. Panic invalidates pitch and requires fresh CC, unless fallback is set.
- **Safety ms:** default 30000. Bounds a single articulation if a physical gate source disconnects or misses note-off. 0 disables this limit for arbitrarily long sustained gates. It also caps trigger length; raise it for longer durations.

## State and timing rules

Each voice is monophonic. Every new gate note-on retriggers, including identical pitches: old note-off precedes new note-on. With overlapping gate notes, the newest onset selects pitch and the articulation remains active until **all matching input onsets have matching offs**. Repeated same-key note-ons are counted. This union-of-gates rule avoids an older gate's off prematurely ending the newer articulation. Missing offs require Panic or the safety limit. There is no return to an older gate's pitch.

Events execute in received order. A gate samples the most recently processed pitch; near-simultaneous CC and gates are not reordered or artificially delayed. Different source tracks have no guaranteed relative ordering. A CC received after gate onset affects only the next S&H articulation. A gate received before initial valid CC stays silent even if pitch subsequently arrives while held. Send a new gate to articulate it.

The Max `js` runtime and cross-device messaging are not sample accurate. A 5 ms Task polls trigger/safety deadlines; scheduler load can make release later than the requested duration. Diagnostics update at 20 Hz. This implementation is appropriate for functional testing; measure actual latency/jitter before performance use. A future scheduler-native timing path is listed below.

## Cleanup and limits

- Panic, reset, transport transition from playing to stopped, device disable, device deletion, Group changes and source changes release stored notes. Configuration edits end that voice's articulation; pitch mapping/source edits also invalidate pitch until new CC.
- Gate and pitch senders heartbeat every 250 ms. Software sender loss releases affected notes after 1.5 seconds; pitch-sender loss also invalidates its pitch. Output receivers similarly release stored notes after engine heartbeat loss. Sender disable/delete/group/channel changes request immediate cleanup.
- A live sender cannot infer that an external cable was unplugged, because a steady pitch or a long gate can legitimately be silent on MIDI. The maximum articulation duration is the physical-disconnection safeguard. Repeated gates can still use the last pitch if a physical pitch controller stops transmitting. Refresh pitch or Panic after reconnecting.
- Only one engine may use each Group (1–64). Duplicated engines fail silent while both are registered. Use one sender per logical channel per input kind and one output receiver per destination; senders do not arbitrate duplicate input identities. Group matching is explicit and saved.
- Panic sends exact note-offs for owned active notes, not blanket CC123 that could cut unrelated notes on shared channels. Incoming CC120/123 request cleanup. Sustain, pitch bend, clock, unrelated notes/CC, and SysEx are consumed rather than forwarded.
- During Live device bypass, Live itself may pass input MIDI around an inactive effect. Test bypass behavior in the intended Set; use the device's voice Mute and Panic for controlled performance cleanup. Host crash, abrupt process termination, and hardware-output rerouting cannot guarantee delivery of a final note-off. Panic before changing Live's physical output routes.
- Native Live recall and device disable/stop/deletion behavior need receiver-side validation; simulated cleanup cannot establish what the host delivers after bypass/removal.

## Routing evidence

Cycling '74 documents [midiin/midiout as the Max for Live MIDI effect boundary](https://docs.cycling74.com/legacy/max7/vignettes/live_midieffects), including conventional channel-1 input. [Send/receive communication between Max for Live devices is supported](https://docs.cycling74.com/reference/send/), with potential latency and no guaranteed ordering across multiple receivers. [live.thisdevice](https://docs.cycling74.com/reference/live.thisdevice/) provides fully initialized load notification and device enabled/disabled state. The engine uses those interfaces and observes Live transport/tempo. It does not select external CoreMIDI ports directly or depend on undocumented Live routing APIs.

## Build and tests

From this project directory:

```sh
python3 tools/build.py
python3 tools/build.py --verify-installed
node tests/test_core.js
node tests/test_devices.js
python3 tests/test_package.py
```

No external packages are required. `src/gesture_core.js` is the pure ES5 engine. `src/gesture_device.js` is the Max adapter. `tools/build.py` generates the patch graph, parameter metadata, editable `.maxpat` files and MIDI-effect AMPF containers. Both support scripts are copied beside source patchers and AMXDs, and the full release is automatically installed in the two User Library CCNotes folders. Rebuild after editing source. These AMXDs are generated containers, not Max-frozen devices.

The test suite establishes phase-1 acceptance behavior, four independent voices, balanced note ownership under retriggers, trigger deadlines, hysteresis, calibration, 14-bit ordering, parser behavior, stop/disable/source loss cleanup in simulation, group isolation, parameter wiring and package consistency. See `ACCEPTANCE.md` for the remaining Live/hardware checks.

## Future enhancements

1. Move articulation deadlines and MIDI dispatch into Max scheduler-native objects after measuring the prototype's timing.
2. Add optional CC/gate sampling offset and explicit 14-bit pair coalescing.
3. Add pitch bend/glide and microtonal output with receiver-specific configuration.

Nonlinear pitch response, Twister mappings and gesture recording can follow. Harmonic processing remains downstream.
