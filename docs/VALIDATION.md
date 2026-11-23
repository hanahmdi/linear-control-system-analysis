# Validation and known limitations

## Source evidence
- `archive/original-matlab` contains eleven student-submitted MATLAB scripts.
- The original submission also contained an 18-page handwritten PDF. It is deliberately not republished due to identifying information and because it is not needed to run the code.
- The numerical figures in `docs/images/` were independently computed from the exact assignment model using Python/SciPy; they are **not** original MATLAB screenshots.

## Issues in the original scripts
1. `p3.m` uses the exact rounded closed-loop coefficients near `[1, 44.87, 344.7, 2169, 7828]`, while `p6.m`, `p8.m`, `p11.m`, `p12.m`, `p12b.m`, and `p13.m` use a different fourth-order denominator `[1,44.87,344.7,2148,7034]`. That latter denominator corresponds to an equivalent unity-feedback *open-loop* representation, not the closed-loop denominator.
2. `p4.m` constructs a candidate `Tn` but then assigns `Tn=num/den`; hence it plots the full-order response twice.
3. `p11.m` searches for a **positive** real coordinate `0.5`, rather than the damping-ratio `0.5` line required by question 11. A constant-real-part line is not a damping-ratio line.
4. `p12b.m` calculates an approximate 3-dB bandwidth from the maximum scanned Bode magnitude; this is not, in general, a robust closed-loop bandwidth measurement.
5. The archive does not contain documented, reproducible solutions to the complete controller-design requirements of questions 14–17. Do not claim the specified overshoot, settling-time, improvement or phase margin have been achieved.

## Verification status
- SciPy used to recompute plant and fourth-order model polynomials and generate plots.
- Python unit tests check the coefficients and left-half-plane stability of the nominal closed loop.
- MATLAB scripts were prepared and reviewed, **not run in MATLAB in this environment**.
- Controller optimization and frequency-domain compensator design remain future extensions.
