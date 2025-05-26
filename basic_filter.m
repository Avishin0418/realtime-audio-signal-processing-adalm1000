% Load audio or record
fs = 44100;
recObj = audiorecorder(fs, 16, 1);
disp('Recording...');
recordblocking(recObj, 5);
disp('Done.');
y = getaudiodata(recObj);

% Design low-pass filter
fc = 1000; % cutoff frequency
[b, a] = butter(6, fc/(fs/2), 'low');
filtered_y = filter(b, a, y);

% Plot original and filtered signals
figure;
subplot(2,1,1);
plot(y);
title('Original Signal');
subplot(2,1,2);
plot(filtered_y);
title('Filtered Signal (Low-Pass)');
