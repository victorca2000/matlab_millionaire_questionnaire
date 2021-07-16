function theme_tune

[y,Fs] = audioread('theme_song.mp3'); % Reads mp3 file corresponding to the main menu tune and store it in matrix

sound(y, Fs) % Produce the sound for the theme song

end


