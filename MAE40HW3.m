clear global ; clf ; syms s L C c1 R Vo Vm Vi
A = [0 1 L*s 0 0;
    C*s -C*s 0 -1 0;
    0 1/R 0 0 -1;
    0 0 1 -1 0;
    -c1/R 0 0 1 -1];
b = [Vi ; 0 ; 0 ; 0 ; 0];
x = A\b;

LPF2=simplify(x(1))
omega4=10 ; Q=5; F_LPF2=RR_tf([1 omega4 omega4^2],[1 (1/Q)*omega4 omega4^2]); figure(1), RR_bode(F_LPF2)
