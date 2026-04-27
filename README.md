This repository contains the source for the paper:

**O28** — *Asymptotic Calibration of the BFS Window and Effective Dimension of the Admissible Trajectory*  
PDF: `O28.pdf`

## Quick Summary

O28 performs two critical measurements completing the numerical phase of the spectral admissibility sub-programme:

- **Asymptotic calibration of the BFS window** via the scaling of $n_1(q)/q$
- **Measurement of the effective dimension** of the admissible trajectory via the covariance operator

The key result is:

- The covariance operator in the admissible projection space $H_{\mathrm{eff}} = \mathbb{C}^3$ has **rank exactly 3
  **, with invariant spectrum:
  $[\lambda_1 : \lambda_2 : \lambda_3] = [1 : 1/2 : 1/2]$

This fills $H_{\mathrm{eff}}$ completely and establishes a **dimension gap** with the spin-$\tfrac{1}{2}$
prediction $d_\rho^2 = 4$, which is deferred to O29.

## Context

O28 follows the chain:

- **O25**: identification of $\delta_{\text{pair}}$ as a structural invariant and discovery of the role of $n_1(q)
  /q$
- **O26**: formulation of the representation-theoretic dictionary and the effective-dimension test (Criterion 5.4)
- **O27**: rigidity result — all admissible morphisms factor through $\mathfrak{su}(2)$

Within this context, O28 addresses two remaining numerical questions:

1. What is the asymptotic behaviour of the BFS fitting window?
2. What is the observed effective dimension in the projected space?

## Main Results

### 1. BFS Window Calibration

- Extraction of $n_1(q)$ from auto-calibrated windows
- Linear fit:
  $n_1(q) \approx \hat{\alpha} q + \hat{\beta}, \quad \hat{\alpha} \approx 0.053$
- Stability confirmed across primes $q \in \{29, 61, 101, 151, 211\}$

This validates the O25 insight that:

> the correct asymptotic variable is $n_1(q)/q$, not $q$ itself.

### 2. Effective Dimension Measurement

Using O26 Criterion 5.4:

- Covariance operator:
  $C_c \in \mathrm{End}(H_{\mathrm{eff}})$
- With:
  $H_{\mathrm{eff}} = \mathbb{C}^3$

**Result:**

- Rank:
  $r_{\mathrm{eff}} = 3$
- Spectrum:
  $[1 : 1/2 : 1/2]$

- Universality:
    - holds for all conjugate pairs
    - holds for all tested primes

## Interpretation

### What is established

- The admissible trajectory fully spans $H_{\mathrm{eff}}$
- The effective dimension is **exactly 3**, with a non-generic eigenvalue structure
- The result is consistent with:
  $\Sigma_c(n_3) = 3 \quad \text{(O23)}$

### What is *not* established

- The representation-theoretic dimension:
  $r_{\mathrm{eff}} = d_\rho^2$

This cannot be tested yet because:

$H_{\mathrm{eff}} \neq V_\rho$

### Meaning of the Dimension Gap

The observed gap:

$3 \quad \text{vs} \quad 4$

does **not** imply:

- loss of dimension
- physical compression
- projection artefact

It reflects:

> the fact that the test is performed in the wrong space.

## Role of O28 in the Programme

O28 is a **transition paper** between:

- numerical validation (O25–O28)
- representation identification (O29)

It establishes:

- the correct asymptotic scaling
- the observed rank structure
- the precise obstruction to the spin-$\tfrac{1}{2}$ test

## What Remains (O29)

The next step is:

- identify the representation subspace:
  $V_\rho \subset H_{\mathrm{eff}}$
- restrict:
  $C_c \rightarrow \mathrm{End}(V_\rho)$

and test:

$
r_{\mathrm{eff}} =
\begin{cases}
4 & \text{(SU(2) confirmed)} \\
3 & \text{(structural constraint)}
\end{cases}
$

## Repository Structure

- `O28.tex` — LaTeX source
- `O28.pdf` — compiled paper
- `data/` — NPZ datasets from O25 pipeline (Q5a–O5 checkpoints)
- `scripts/` — analysis tools (window calibration, covariance computation)

## Keywords

spectral admissibility, BFS window calibration, effective dimension, covariance operator,  
Weil representation, Heisenberg group, admissible trajectory, SU(2), representation test,  
Born–Infeld admissibility
