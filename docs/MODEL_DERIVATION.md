# Model derivation

The student ID-dependent assignment gives `a=23` (sum of digits) and `b=39` (last two digits). Hence natural frequency `omega_n=sqrt(39)` and damping ratio `zeta=0.23`.

```math
P(s)=\frac{39}{s^2+2(0.23)\sqrt{39}s+39}
```

The actuator and sensor blocks are:

```math
A(s)=\frac{0.55}{s+5},\qquad H(s)=\frac{28.6}{s+37}.
```

With a unity controller gain and negative feedback, the **closed-loop** response from reference to output is:

```math
T(s)=\frac{A(s)P(s)}{1+A(s)P(s)H(s)}
=\frac{21.45(s+37)}{(s+5)(s+37)(s^2+2(0.23)\sqrt{39}s+39)+613.47}.
```

After expanding:

```math
T(s)\approx\frac{21.45s+793.65}{s^4+44.8727s^3+344.6534s^2+2169.4493s+7828.47}.
```

An **equivalent unity-feedback** open-loop transfer function can be constructed as `L_eq(s)=T(s)/(1-T(s))`. Its denominator differs from the denominator of `T(s)`. This is the source of an apparent inconsistency across the original MATLAB scripts.
