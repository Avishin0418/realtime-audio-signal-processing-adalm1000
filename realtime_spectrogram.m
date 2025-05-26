fs = 44100;
recObj = audiorecorder(fs, 16, 1);

disp('Start speaking.');
recordblocking(recObj, 5);
disp('End of recording.');

y = getaudiodata(recObj);

% Plot time-domain signal
figure;
plot(y);
title('Time-Domain Signal');
xlabel('Sample');
ylabel('Amplitude');

% Plot spectrogram
figure;
spectrogram(y, 256, [], [], fs, 'yaxis');
title('Spectrogram of Recorded Audio');
