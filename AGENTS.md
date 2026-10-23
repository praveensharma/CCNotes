# CCNotes project workflow

- Keep CCNotes independent of Tetrachords and ROTA.
- After changing source, UI, or packaging, run `python3 tools/build.py`. Its default action builds and installs all five AMXDs and both support scripts into the CCNotes folders in the Ableton User Library (MIDI Effects preset path and Max4Live path).
- Run `python3 tools/build.py --verify-installed` before reporting a device update complete. Never leave only source or repository dist changes when an updated device is requested. Use `--no-install` only for an explicitly distribution-only or isolated test build.
- Run the relevant Node tests and `python3 tests/test_package.py` for implementation changes. Keep installation backups and preserve unrelated User Library files.
- Distinguish package/install verification from Live playback and hardware validation. Generated AMXDs require their adjacent JavaScript files; do not describe them as frozen single-file devices.
