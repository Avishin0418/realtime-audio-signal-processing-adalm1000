import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd

duration = 5  # seconds
fs = 44100  # sample rate

print("Recording...")
audio = sd.rec(int(duration * fs), samplerate=fs, channels=1)
sd.wait()
print("Recording complete.")

# Plot the recorded audio
time = np.linspace(0, duration, len(audio))
plt.figure(figsize=(10, 4))
plt.plot(time, audio)
plt.title("Recorded Audio Signal")
plt.xlabel("Time [s]")
plt.ylabel("Amplitude")
plt.show()
