import numpy as np
from scipy.optimize import fsolve
import os

# Physical constants (units: cm, V, s, F, C)
T = 300.0
q = 1.602e-19
kB = 1.38e-23
eps_0 = 8.85e-14
eps_r = 11.7
eps_s = eps_r * eps_0
ni = 1.5e10
VT = (kB * T) / q

Dn = 34.93
Dp = 12.42
tau_n = 10e-6
tau_p = 10e-6

# Design constraints
VR = 5.0
C_target = 1.60e-9
J_target = 1.30e-8

# Calculate doping ratio k = NA/ND from current symmetry
k_ratio = np.sqrt((Dn / Dp) * (tau_p / tau_n))

# Solve for ND upper limit from capacitance constraint
def capacitance_equation(Nd):
    Na = k_ratio * Nd
    Vbi = VT * np.log((Na * Nd) / (ni**2))
    numerator = q * eps_s * Na * Nd
    denominator = 2 * (Vbi + VR) * (Na + Nd)
    Cj = np.sqrt(numerator / denominator)
    return Cj - C_target

Nd_max_solution = fsolve(capacitance_equation, 1e14)[0]

# Solve for ND lower limit from leakage current constraint
def current_equation(Nd):
    Na = k_ratio * Nd
    Ln = np.sqrt(Dn * tau_n)
    Lp = np.sqrt(Dp * tau_p)
    np0 = (ni**2) / Na
    pn0 = (ni**2) / Nd
    Js = q * ( (Dn * np0 / Ln) + (Dp * pn0 / Lp) )
    return Js - J_target

Nd_min_solution = fsolve(current_equation, 1e13)[0]

# Verify selected design point
Nd_choice = 2.0e14
Na_choice = k_ratio * Nd_choice
err_c = capacitance_equation(Nd_choice) + C_target
err_j = current_equation(Nd_choice) + J_target

# Prepare output
output_lines = []
output_lines.append("=" * 50)
output_lines.append("PN Junction Design - Numerical Solution")
output_lines.append("=" * 50)
output_lines.append(f"\n1. Doping Ratio (Current Symmetry)")
output_lines.append(f"   NA/ND = {k_ratio:.5f}")
output_lines.append(f"\n2. Design Window")
output_lines.append(f"   ND upper limit (Capacitance): {Nd_max_solution:.4e} cm^-3")
output_lines.append(f"   ND lower limit (Leakage):     {Nd_min_solution:.4e} cm^-3")
output_lines.append(f"\n3. Selected Design Point")
output_lines.append(f"   ND = {Nd_choice:.2e} cm^-3")
output_lines.append(f"   NA = {Na_choice:.2e} cm^-3")
output_lines.append(f"\n4. Verification")
output_lines.append(f"   Capacitance: {err_c:.4e} F/cm^2 (< {C_target:.2e}) - {'PASS' if err_c < C_target else 'FAIL'}")
output_lines.append(f"   Leakage:     {err_j:.4e} A/cm^2 (< {J_target:.2e}) - {'PASS' if err_j < J_target else 'FAIL'}")
output_lines.append("=" * 50)

# Print to console
for line in output_lines:
    print(line)

# Save to file
result_dir = os.path.join(os.path.dirname(__file__), 'result')
os.makedirs(result_dir, exist_ok=True)
output_file = os.path.join(result_dir, 'calculation_result.txt')

with open(output_file, 'w', encoding='utf-8') as f:
    f.write('\n'.join(output_lines))

print(f"\nResults saved to: {output_file}")