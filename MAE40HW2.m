%%%Q1
clear
syms s V_o C R
clf
A = [1 0 0 2*R 0 0 0;
    1 -1 0 0 0 1/(s*C) 0;
    0 1 0 0 1/(s*C) 0 0;
    0 1 0 0 0 0 -2*R;
    0 0 1 -1 -1 0 0;
    0 0 0 1 0 -1 0;
    0 0 0 0  1 1 -1]
b = [V_o; 0; V_o; 0; 0; 0; 0];
x = A\b; LPF2=simplify(x(1))
omega4=10; zeta=1; F_LPF2=RR_tf([1 omega4^2],[1 2*zeta*omega4 omega4^2]); figure(1), RR_bode(F_LPF2)

%%%Q2
A = [1 0 0 1/(s*C) 0 0 0;
    1 -1 0 0 0 -R/2 0;
    0 1 0 0 R 0 0;
    0 s*C 0 0 0 0 -1;
    0 0 1 -1 -1 0 0;
    0 0 0 1 0 -1 0;
    0 0 0 0  1 1 -1]
b = [V_o; 0; V_o; 0; 0; 0; 0];
x = A\b; LPF2=simplify(x(1))
F_LPF2=RR_tf([1 omega4^2],[1 2*zeta*omega4 omega4^2]); figure(2), RR_bode(F_LPF2)
