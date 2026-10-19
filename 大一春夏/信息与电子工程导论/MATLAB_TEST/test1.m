%构建基本信息
Fs =1000; % 采样频率
T = 1/Fs; % 采样周期
N = 1500; % 信号长度
t = (0:N-1)*T; % 时间轴，从t=0至1.5，步长为0.001，共N个采样点
S = 0.5*sin(2*pi*30*t)+0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

%绘制Signal 1的时域描述
plot(t(1:250),S(1:250)) % 绘图，横轴t、纵轴S，绘制前250个点
xlabel('Time (s)') % 添加横轴标签
ylabel('Amplitude') % 添加纵轴标签
title('Signal 1') % 添加标题

%绘制Signal 2的时域描述
X = S + 2*randn(size(t));
% randn(size(t))是返回一个和t有同样维数大小的随机数组
plot(t(1:250),X(1:250))
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal 2:Corrupted with Zero‐Mean Random Noise')

%绘制Signal 2的频谱分析图
Y = fft(X);
P2 = abs(Y/N); % 计算谱密度
P1 = P2(1:N/2+1); % 计算单侧频谱
P1(2:end-1) = 2*P1(2:end-1); %双侧频谱是对称的，变单侧后，除两端外幅值加倍
f = Fs*(0:(N/2))/N; % Fs为采样频率，N为采样点数
plot(f,P1)
title('Signal 2:Single‐Sided Amplitude Spectrum of X(t)')
xlabel('frequency (Hz)')
ylabel('|P1(f)|')

%绘制Signal 1的频谱分析图
Y = fft(S);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(N/2))/N;
plot(f,P1)
title('Singal 1:Single‐Sided Amplitude Spectrum of X(t)')
xlabel('frequency (Hz)')
ylabel('|P1(f)|')


%绘制Signal 3的时域描述
Y(1:151)=0; % 频谱中去掉小于100Hz的部分
Y(1350:1500)=0; % 由于Y是对称的，两端都要去掉
W = ifft(Y); % Inverse Fast Fourier transform
W = real(W); % 取实部
plot(t(1:250),W(1:250)) % 绘图，横轴t、纵轴W
xlabel('Time (s)') % 添加横轴标签
ylabel('W(t)') % 添加纵轴标签
title('After Signal Processing') % 添加标题

%绘制Signal 3的频谱分析图
Y = fft(W);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(N/2))/N;
plot(f,P1)
title('Singal 3:Single‐Sided Amplitude Spectrum of X(t)')
xlabel('frequency (Hz)')
ylabel('|P1(f)|')
