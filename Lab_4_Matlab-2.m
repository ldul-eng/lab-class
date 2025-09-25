%% Double every number in a vector
nums = [1 2 3 4 5];
doubled = nums * 2;
disp(doubled)
%% %% Plot y = x^2
x = -5:5;
y = x.^2;
plot(x, y, 'o-')
title('y = x^2')
xlabel('x'), ylabel('y')
%% Coin toss
outcome = randi([0 1]);  % 0 = tails, 1 = heads

if outcome == 1
    disp('Heads')
else
    disp('Tails')
end
%% %% Pass / fail check
score = 62;

if score >= 50
    disp('Pass')
else
    disp('Fail')
end
%% %% Matrix multiplication
A = [1 2; 3 4];
B = [5 6; 7 8];
C = A * B;
disp(C)
%% %% Play a 440 Hz tone (A note) for 1 second
fs = 8000;              %% sampling rate
t = 0:1/fs:1;           %% Time vector
y = sin(2*pi*440*t);    %% Sine Wave
sound(y, fs)
%% %% Simple signal processing: noise removal
t = 0:0.01:2*pi;             % time axis
signal = sin(2*t);           % clean signal
noise = 0.3*randn(size(t));  % random noise
noisy_signal = signal + noise;

% Moving average filter (window length = 5 samples)
window = ones(1,5)/5;
smoothed_signal = conv(noisy_signal, window, 'same');

% Plot
plot(t, noisy_signal, 'c', 'DisplayName', 'Noisy')
hold on
plot(t, smoothed_signal, 'r', 'LineWidth', 1.5, 'DisplayName', 'Smoothed')
plot(t, signal, 'k--', 'DisplayName', 'Original')
hold off

legend, xlabel('Time'), ylabel('Amplitude')
title('Noise Removal with Moving Average Filter')