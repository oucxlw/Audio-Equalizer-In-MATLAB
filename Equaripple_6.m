function Hd = Equaripple_6(input)
%B1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.2 and the Signal Processing Toolbox 6.20.
% Generated on: 25-Jan-2016 03:32:43

% Equiripple Bandpass filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = input;  % Sampling Frequency

N      = 100;  % Order
Fstop1 = 2990;  % First Stopband Frequency
Fpass1 = 3000;  % First Passband Frequency
Fpass2 = 6000;  % Second Passband Frequency
Fstop2 = 6010;  % Second Stopband Frequency
Wstop1 = 1;    % First Stopband Weight
Wpass  = 1;    % Passband Weight
Wstop2 = 1;    % Second Stopband Weight
dens   = 20;   % Density Factor

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 ...
           0], [Wstop1 Wpass Wstop2], {dens});
Hd = dfilt.dffir(b);

% [EOF]
