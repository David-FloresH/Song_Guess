close all
clc
%PROYECTO FINAL PDS

disp("       BIENVENIDO A SHAZAM")
[x,Fs]= audioread('Llamarada2.wav');
espec = abs(fft(x));
xF = [1:length(espec)]*Fs/length(espec);
[n,d] = butter(2,[8000,11025]*2/Fs,'stop');
s = filter(n,d,x);

disp("Audio a identificar");
sound(s,Fs)
input("Presionar enter para comenzar analisis de cancion");
disp(' ')
disp(' Analizando...... ')
c1 = xcorr(s,y);
c2 = xcorr(s,y2);
c3 = xcorr(s,y3);
c4 = xcorr(s,y4);
c5 = xcorr(s,y5);

maxs(1) = max(abs(c1));
maxs(2) = max(abs(c2));
maxs(3) = max(abs(c3));
maxs(4) = max(abs(c4));
maxs(5) = max(abs(c5));
maximo = max(maxs);
disp(' ')
disp('         RESULTADO')
switch maximo
    case maxs(1) 
        disp('Cancion: Roxanne')
        disp('Artista: Arizona Zervas')
        sound(y(1:330750),Fs)
    case maxs(2)
        disp('Cancion: Llamarada')
        disp('Artista: Luis Miguel')
        sound(y2(1:330750),Fs)
    case maxs(3)
        disp('Cancion: En casita')
        disp('Artista: Bad Bunny')
        sound(y3(1:330750),Fs)
    case maxs(4)
        disp('Cancion: Un hombre busca a una mujer')
        disp('Artista: Luis Miguel')
        sound(y4(1:330750),Fs)
    case maxs(5)
        disp('Cancion: All Star')
        disp('Artista: Mash Mouth')
        sound(y5(1:330750),Fs)
end

