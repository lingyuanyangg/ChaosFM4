# Validation

- Max runtime: Max 9, 44.1 kHz.
- `gen~` compiled and exposed 2 audio outputs plus 4 modulation-monitor outputs.
- Recorded 3.80 seconds while switching to linear FM, setting a 3 Hz floor, applying maximum coupling, and changing matrix depth, axes, and drive.
- Stereo peaks: 0.0880 / 0.0873; stereo RMS: 0.0439 / 0.0395.
- All four modulation channels had non-zero range (0.59–1.22).
- No sample exceeded full scale and no channel became silent.
- Static patch inspection found 45 saved parameters, each backed by a `live.*` UI object.
- Presentation mode was visually checked on both OSCILLATORS and FM MATRIX pages.
- Randomize was triggered in Max and changed oscillator values, axes, pan, FM amount, bandwidth, drive, and the bipolar matrix.

Machine-readable measurements are stored in `validation/report.json`.
