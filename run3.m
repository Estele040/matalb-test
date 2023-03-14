syms x outcome;
y = sin(x.^2+2)+cos(x*4+0.5);
pi_ = 3.1415926535897932;
step = 10000000000;
N = 0;
S = 0;
parfor i = (1:step)
    x = 0.2* pi_ + rand * 1.8* pi_;
    y1 = -1.936136608675645 + rand* (1.936136608675645 ...
+1.979549687512111);
    if ((sin(x.^2+2)+cos(x*4+0.5))>0) && (y1 > 0) && (y1 < (sin(x.^2+2)+cos(x*4+0.5)))
        N = 1;
    elseif ((sin(x.^2+2)+cos(x*4+0.5)) < 0) && (y1<0) && (y1>(sin(x.^2+2)+cos(x*4+0.5)))
        N = -1;
    else
        N = 0;
    end
    S = S + N;
end

outcome = 1.8*pi_* (1.936136608675645 ...
+1.979549687512111) * (S/step);
syms x;
y = (sin(x.^2+2)+cos(4*x+0.5));
outcome
b=integral(matlabFunction(y),0.2*pi,2*pi)
outcome-b
