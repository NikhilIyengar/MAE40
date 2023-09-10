clear global; syms s L C R I_C I_L I_R I_CB I_LB I_CA I_LA V_o V_oB V_oA V_m V_d V_in
%Phase A
A = [L*s 0 0 0;
    0 -1 0 C*s;
    0 0 R -1;
    0 -1 1 0];
b = [V_in - L*I_LA; -C*V_oA; 0; 0];
x = A\b;
FA=simplify(x(4))
InductorA = simplify(x(1))

%Phase B
A = [L*s 0 0 0;
    0 1 0 C*s;
    0 0 R -1;
    1 -1 -1 0];
b = [V_in + L*I_LB; -C*V_oB; 0; 0];
x = A\b;
FB=simplify(x(4))
InductorB = simplify(x(1))