// Ex 4
clc; clear;

fs = 16000;
duration = 0.01;
t = 0 : 1/fs : duration;

freq = 1000;
audio_sig = sin(2 * %pi * freq * t);

wavwrite(audio_sig, fs, fullfile(TMPDIR, "audio.wav"));

[y, fs_read] = wavread(fullfile(TMPDIR, "audio.wav"));

playsnd(y, fs_read);

clf();
plot(t, y, 'b');
e = gce(); e.children.thickness = 2;
xtitle("Audio Waveform of a 1000 Hz Sine Signal", "Time (s)", "Amplitude");
xgrid(1);
