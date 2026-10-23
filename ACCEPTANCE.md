# Live and hardware acceptance

Use a new test Set with explicit source ports and no return routing. Keep downstream monitoring visible. Automated test results and opening a standalone Max patch are not substitutes for these checks.

## Phase 1: one voice

- Load `CCNotes 1 Voice.amxd` from `dist` with its two adjacent JS files. Confirm no missing-script errors in Max Console.
- Confirm all three Controls pages switch correctly and edit their named parameters. Save the Set with non-default CC, gate filter and range; reopen and verify recalled values by sending known CC values and gates.
- At default mapping, send CC1=0: diagnostic raw=0, pitch=36, no note-on.
- Send gate note 60 velocity 100: receiver shows note-on 36.
- While held, send CC1=127: diagnostic pitch=84; receiver shows no new event in S&H.
- Release gate note 60: receiver shows note-off **36**, not 84.
- Send another gate: receiver shows note-on 84; release it and verify note-off 84.
- Reload or Panic; a gate before fresh CC must be silent with Fallback=-1.

## Phase 2: four voices

- Use CC1–4 and gate notes 60–63 initially. Feed all four pitch values, then hold all four gates.
- Verify four receiver tracks show independent on/off pairs and hardware receives the intended physical channel from each track's MIDI To setting.
- Release one gate while changing another voice's CC. Only the selected gate releases; the held S&H note stays fixed.
- Retrigger a pitch and overlap gates: old note-off precedes new note-on; releasing an older gate does not cut the newer one while a matching gate remains held.
- Mute each row and verify its note is released while the other voices continue.

## Phase 3 and reliability

- In Trigger mode use 150 ms; input note-off must not truncate it. Retrigger before expiry; old deadline must not truncate the new note.
- In Sync mode verify 1/8 lasts approximately 250 ms at 120 BPM; measure scheduler jitter under the intended Set's load.
- In Continuous mode sweep pitch while held. Confirm off/on pairs only on mapped-note change, and stable output near boundaries with hysteresis.
- In 14-bit mode set Input max=16383; send both halves in either order, verify no note before valid pitch, and examine transient intermediate values if continuous tracking is enabled.
- Test physical controller endpoints and set Input min/max accordingly. Confirm inversion and transpose.
- While sounding, test Panic, playing→stopped, disable/re-enable, source assignment changes, sender deletion, engine deletion and receiver deletion. Verify receiver-side cleanup and no replay of held state on re-enable.
- Test the actual Live device power button separately from row Mute: inspect bypassed input and cleanup delivery.
- Unplug gate hardware while held. Confirm the configured Safety ms bounds the articulation. Unplug a software sender / remove engine and confirm receiver-side timeout cleanup within about 1.5 seconds plus scheduler delay.
- Reconnect and send fresh CC/gates; confirm no stale pitch or gate leaks after Panic. A physical pitch-only disconnection cannot be detected from silence; follow the README recovery procedure.
- Duplicate an engine on the same Group: output must fail silent; change Group and verify independent operation.

Record Live/Max versions, source assignments, measured timing, actual receiver channels and audible result. No hardware pass is claimed until these checks are performed.
