# Inspection and architecture

## Workspace inspection

The existing checkout contains `implementation/` (Tetrachords and related harmonic devices) and `rota-implementation/` (MIDI allocation and destination receivers). Both trees were already untracked in Git before this work. They have not been edited, moved, reformatted, or included in this project's distribution.

No applicable AGENTS.md was found in this workspace. Existing AMXD build scripts were inspected to establish the MIDI-effect container header and ordinary `midiin`/`midiout`, `live.thisdevice`, transport observer, and companion-file patterns. No harmonic or allocation implementation is imported. The new project lives entirely in `CCNotes/` with its own engine, wrapper, build tool, tests and documentation.

## Component boundary

```text
Track MIDI CC ───────────────┐
Pitch Send (optional) ───────┤
                            ▼
                      CC assignment
                      Endpoint mapping
                      Pitch state (valid/raw/continuous/chromatic)
                            │
Track gate notes ────────┐   │
Gate Send (optional) ────┤   │
                        ▼   ▼
                       Articulation engine, one state record per voice
                        │   ├── held gate counters
                        │   ├── saved output pitch/channel/velocity
                        │   └── trigger and safety deadlines
                        ▼
                 Local MIDI output and/or named voice events
                        │
                        └── Voice Out 1–4 → separate Live destination tracks
```

The product is a MIDI **effect**, since it generates MIDI for a downstream instrument, rather than an audio-producing Max Instrument. The one-voice and four-voice devices instantiate the same core with different voice counts.

`gesture_core.js` has no Max or Live API dependency. All input actions take an explicit timestamp, and output is an injected `(voice, channel, pitch, velocity)` callback. Velocity zero means release. This makes ownership and scheduling rules testable without audio hardware.

`gesture_device.js` parses byte streams, reads saved UI parameters after `live.thisdevice` initialization, attaches tempo/transport notifications, polls deadlines, and transports named messages between companions. Public buses are versioned `continuous_cc_notes_gate_v1` and `continuous_cc_notes_out_v1`; every message carries an explicit Group. An identity and heartbeat distinguish software device instances. Group is the user-facing namespace; `---` device-local prefixes would prevent inter-device connection and are intentionally not used on public buses.

The engine never opens a note from a CC update. Continuous tracking may replace an already-owned active note. Note-off always uses the active record, never a new pitch calculation. A trigger owns a single deadline; retrigger replaces it rather than leaving delayed note-offs that could cut subsequent notes.

Saved state consists only of configuration. Pitch validity, held gates and sounding notes are not restored as live performance state. Pitch mapping edits invalidate the cached pitch; other parameter edits end articulation without requiring unnecessary fresh pitch data. Reopening a Set requires new controller input or an explicit fallback.

## Milestones and verification

1. **One voice:** configurable CC and note gate, chromatic mapping, S&H, saved note-off state and diagnostics. The first two core tests demonstrate the six requested phase-1 behaviors and missing-pitch handling.
2. **Four voices:** independent state records and output callbacks; simultaneous articulation and isolation tested in both core and adapter harnesses.
3. **Expression:** trigger timing, continuous tracking, hysteresis, 14-bit paired CC, input endpoint calibration, velocity and parameter persistence metadata. Runtime recall still needs a Live acceptance pass.

Receiver-side cleanup, physical MIDI channel selection, Live bypass behavior and audible timing are explicitly separated from source/package checks. See README and ACCEPTANCE for routing constraints and the remaining runtime verification.
