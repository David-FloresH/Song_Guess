[y,Fs] = audioread('Roxanne.wav');
esp1 = abs(fft(y));
xF = [1:length(esp1)]*Fs/length(esp1);

[y2,Fs] = audioread('Llamarada.wav');
esp2 = abs(fft(y2));
xF = [1:length(esp2)]*Fs/length(esp2);

[y3,Fs] = audioread('En_casita.wav');
esp3 = abs(fft(y3));
xF = [1:length(esp3)]*Fs/length(esp3);

[y4,Fs] = audioread('Un_hombre.wav');
esp4 = abs(fft(y4));
xF = [1:length(esp4)]*Fs/length(esp4);

[y5,Fs] = audioread('Allstar.wav');
esp5 = abs(fft(y5));
xF = [1:length(esp5)]*Fs/length(esp5);

