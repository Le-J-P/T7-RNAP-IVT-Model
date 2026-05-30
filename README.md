# T7 RNAP IVT Model

> **Mechanistic Modeling of In Vitro Transcription: A Quality by Design Approach to Predict mRNA Yield and dsRNA Impurities**

*Jean-Philippe Seiler — FH Aachen University of Applied Sciences — March 2026*

---

## Table of Contents

- [Background](#background)
- [Problem Statement](#problem-statement)
- [Model Overview](#model-overview)
- [Reaction Network](#reaction-network)
- [Key Parameters](#key-parameters)
- [dsRNA Formation Mechanisms](#dsrna-formation-mechanisms)
- [Model Validation](#model-validation)
- [Key Results](#key-results)
- [Future Extensions](#future-extensions)
- [Repository Structure](#repository-structure)
- [Software](#software)
- [References](#references)

---

## Background

Therapeutic mRNA and COVID-19 vaccines are produced through **T7 RNA polymerase (T7 RNAP) in vitro transcription (IVT)** — a well-established but industrially challenging process. The main cost drivers are:

- The **T7 RNA polymerase** enzyme
- The **DNA template (dsDNA)**

Optimizing yield while minimizing impurities at industrial scale remains a major challenge.

---

## Problem Statement

During IVT, unwanted by-products are formed, most critically **double-stranded RNA (dsRNA)**:

- dsRNA is **highly immunogenic** and triggers innate immune responses
- It must be removed via complex and expensive purification steps (e.g., HPLC)
- Two mechanisms generate dsRNA:
  - **3′-loopback extension**: the completed mRNA folds back on its own 3′ end, which T7 RNAP then extends using the mRNA itself as template
  - **Antisense (DNA-templated) transcription**: T7 RNAP binds to the non-template strand and produces complementary antisense RNA

> **Research question:** How can mechanistic modelling of T7 RNA polymerase transcription identify the kinetic and physicochemical parameters that most strongly determine dsRNA formation, in order to guide industrial process optimization and reduce purification costs?

---

## Model Overview

The model is implemented in **COPASI** as a system of ordinary differential equations (ODEs) and encodes three coupled pathways:

| Pathway | Description | Source |
|---|---|---|
| **Main pathway** | mRNA production via promoter binding, initiation, elongation & termination | Stover et al. (2025) |
| **DNA-templated dsRNA** | Antisense transcription from non-template strand | Arnold et al. (2001) |
| **RNA-templated dsRNA** | 3′-loopback extension of completed mRNA | Gholamilipour et al. (2018) |

### Species

| Species | Role |
|---|---|
| `dsDNA` | Template for mRNA synthesis |
| `T7 RNAP` | Enzyme catalyzing transcription |
| `NTPs` | Substrate consumed during RNA synthesis |
| `Mg2+` | Cofactor required for NTP–T7 RNAP interaction |
| `PPi` | Pyrophosphate released after each NTP incorporation |
| `mRNA` | Target product |
| `asRNA` | Antisense RNA intermediate |
| `dsRNA` | Immunogenic by-product |
| `MgPPi (Mg₂P₂O₇)` | Mg²⁺ chelation product, inhibitory precipitate |

---

## Reaction Network

The full model contains **14 reactions**:

| # | Name | Reaction | Rate Law |
|---|---|---|---|
| 1 | T7 Binding to dsDNA | T7 RNAP + dsDNA ⇌ Promoter Bound Complex | Mass action (reversible) |
| 2 | Mg2+ + PPi = MgPPi2 | Mg2+ + PPi ⇌ MgPPi2 | Mass action (reversible) |
| 3 | Elongation & Termination | 1990·NTPMg + Initiation Complex → mRNA + T7 RNAP + PPi + Mg2+ | MM with competitive inhibition |
| 4 | Initiation Step | 10·NTPMg + Promoter Bound Complex → Initiation Complex + PPi + Mg2+ | MM with competitive inhibition |
| 5 | NTP + Mg2+ = NTPMg | NTP + Mg2+ ⇌ NTPMg | Mass action (reversible) |
| 6 | PPiase Reaction | PPi → 2 Pi | Henri-Michaelis-Menten (irreversible) |
| 7 | Mg precipitation | 3 Mg2+ + 2 Pi → Mg₃(PO₄)₂ solid | Mass action (irreversible) |
| 8 | T7 RNAP half-life | T7 RNAP → T7RNAP_inactivated | Mass action (irreversible) |
| 9 | Antisense Binding | T7 RNAP + dsDNA ⇌ Antisense Bound Complex | Mass action (reversible) |
| 10 | AS Elongation | 1990·NTPMg + AS Initiation Complex → asRNA + T7 RNAP + PPi + Mg2+ | MM with competitive inhibition |
| 11 | as + mRNA = dsRNA | asRNA + mRNA → dsRNA | Mass action (irreversible) |
| 12 | Initia ASRNA | 10·NTPMg + Antisense Bound Complex → AS Initiation Complex | MM with competitive inhibition |
| 13 | 3′ Loop Binding | T7 RNAP + mRNA ⇌ 3′LoopExtensionCplx | Mass action (reversible) |
| 14 | 3′ Loop Extension | 3′LoopExtensionCplx + 10·NTPMg → dsRNA + T7 RNAP + PPi + Mg2+ | MM with competitive inhibition |

### Simplifications

Two reactions from the full literature model were **deliberately excluded**:
- The **short-RNA pathway** has negligible impact on dsRNA formation and consumes only a negligible fraction of the NTP pool
- **Mg²⁺-dependent T7 RNAP stabilization** was omitted because industrial IVT reactions maintain Mg²⁺ concentrations far above NTP levels

---

## Key Parameters

### T7 RNAP Promoter Binding (Reaction 1)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_on | 204,000 | l/(µmol·h) | Stover et al. (2025) |
| K_D | 50 | nM | Stover et al. (2025) |
| k_off = k_on · K_D | 10,200 | h⁻¹ | Stover et al. (2025) |

### Initiation (Reaction 4)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_init | 1,220 | h⁻¹ | Stover et al. (2025) — Fluc template |
| K_m | 50 | µmol/l | Arnold et al. (2001) |
| K_i (PPi) | 200,000 | µmol/l | Arnold et al. (2001) |

> The Fluc transcript length was chosen as the closest available analogue to clinical mRNA IVT products.

### Elongation (Reaction 3)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_e,tot | 136 | h⁻¹ | Stover et al. (2025) — Fluc template |
| K_m | 50 | µmol/l | Arnold et al. (2001) |
| K_i (PPi) | 200 | µmol/l | — |

### Mg²⁺ / PPi Equilibrium (Reaction 2)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| K_d (MgPPi) | 17 | µM | Arnold et al. (2001) |
| k_1 | 1,000 | l/(µmol·h) | — |
| k_2 | 17,000 | h⁻¹ | — |

### 3′ Loop Binding (Reaction 13)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_1 (association) | 204,000 | l/(µmol·h) | Gholamilipour et al. (2018) |
| k_2 (dissociation) | 10,200,000 | h⁻¹ | Arnold et al. (2001) |

> The 3′ loop complex dissociates ~10⁴× faster than a true promoter complex.

### 3′ Loop Extension (Reaction 14)
| Parameter | Value | Unit | Rationale |
|---|---|---|---|
| k_cat | 50 | h⁻¹ | ~3× slower than normal elongation; reflects distributive, pause-prone RNA-templated synthesis |

### Antisense Binding (Reaction 9)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_on | 204,000 | l/(µmol·h) | Stover et al. (2025) |
| K_D (antisense) | 500,000 | nM | ~10⁴× weaker than promoter; Gunderson et al. (1987) |
| k_off | 102,000,000 | h⁻¹ | — |

### Sense-Antisense Hybridization (Reaction 11)
| Parameter | Value | Unit | Source |
|---|---|---|---|
| k_hyb | 6 | l/(µmol·h) | Stover et al. (2025) |

> Hybridization is treated as irreversible: over the IVT timescale, the RNA duplex does not dissociate.

---

## dsRNA Formation Mechanisms

### 1. 3′-Loopback Extension (dominant pathway)
After full-length mRNA is released, T7 RNAP can rebind the free 3′ end and extend it using the mRNA itself as template. This produces a short antisense tail covalently linked to the mRNA, creating a dsRNA hairpin structure.

- Extension is **distributive**: the polymerase extends a few bases, releases, and rebinds
- dsRNA formed is a short additional "tail", not a full-length antisense strand
- The process is **mass-action driven**: as mRNA accumulates, rebinding probability increases

### 2. DNA-Templated Antisense Transcription
T7 RNAP binds to the non-template (coding) strand of dsDNA in a promoter-independent manner and transcribes an antisense strand complementary to the mRNA. The antisense RNA then hybridizes with mRNA to form dsRNA.

- Non-promoter binding affinity is ~10⁴-fold lower than promoter binding
- The dsRNA fraction from this pathway remains **constant with respect to reaction conversion**
- The 3′-loopback fraction **rises linearly with conversion** (key distinguishing feature)

---

## Model Validation

### mRNA Yield
The COPASI model was validated against experimental data from **Akama et al. (2012)**:

| Condition | Experimental | Model |
|---|---|---|
| 1.5 µM dsDNA, 1990 bp | ~1.05 g/L | ✅ Reproduced |
| 3.0 µM dsDNA, 856 bp | ~0.9 g/L | ✅ Reproduced |

The model correctly reproduces the **characteristic sigmoidal production profile** (slow initiation → rapid elongation → saturation).

### dsRNA Ratio
Under high-yield IVT conditions (Stover et al., 2025), the model predicts a dsRNA ratio in the range of **≈0.3–0.5%**, matching experimental values for wild-type T7 RNAP — correct order of magnitude confirmed.

---

## Key Results

### 1. T7 RNAP : dsDNA Ratio is the dominant control parameter
- Higher T7 RNAP concentration → higher dsRNA ratio (dose-dependent)
- Higher dsDNA concentration → lower dsRNA ratio (more promoter sites available → less off-pathway binding)
- **The T7 RNAP : dsDNA ratio is the single most impactful lever**: excess polymerase with insufficient promoters forces T7 RNAP onto mRNA, dramatically amplifying 3′-loopback dsRNA

### 2. mRNA accumulation drives dsRNA over time
- dsRNA fraction rises **steadily and continuously** over reaction time
- By the Law of Mass Action, growing mRNA concentration increases 3′-loopback rebinding probability
- Stopping the reaction before full NTP consumption can limit dsRNA accumulation

### 3. NTP concentration effects
- Higher NTP → more mRNA produced → more off-pathway hybridization
- Lower NTP reduces sensitivity to the T7 RNAP : dsDNA ratio

### 4. Optimal operating point identified
The condition **0.036 µM dsDNA + 0.096 µM T7 RNAP** delivers:
- High mRNA yield (~9.92 µM)
- dsRNA ratio ≤ 0.01 threshold
- 28% less dsDNA vs. reference → significant cost reduction

### 5. Fed-batch strategy recommendation
A fed-batch IVT process with **slow NTP feeding** (keeping NTP at 1–2 mM) is predicted to:
- Prevent PPi accumulation
- Reduce mass-action-driven 3′-loopback dsRNA formation
- Maintain high mRNA yield with lower reactant consumption

---

## Future Extensions

1. **Free Mg²⁺ cofactor mechanics** — explicit Mg²⁺ dependency in elongation rate to model reactions where Mg:NTP < 1
2. **Dynamic pH modeling** — RNA synthesis releases H⁺, causing pH drift during high-yield reactions
3. **Fed-batch simulation** — transition from static batch to dynamic fed-batch with continuous NTP feeding

---

## Repository Structure

```
T7-RNAP-IVT-Model/
│
├── README.md                          ← This file
│
├── model/
│   └── T7_IVT_model.cps              ← COPASI model file
│
├── figures/
│   ├── SBML_network.png              ← Full reaction network diagram
│   ├── dsRNA_ratio_T7conc.png        ← Effect of T7 RNAP concentration
│   ├── dsRNA_ratio_dsDNA.png         ← Effect of dsDNA concentration
│   ├── dsRNA_ratio_T7_dsDNA.png      ← Effect of T7/dsDNA ratio
│   ├── dsRNA_ratio_NTP.png           ← Effect of NTP concentration
│   ├── mRNA_yield_heatmap.png        ← mRNA yield at dsRNA threshold
│   └── validation_Akama2012.png      ← Model vs. experimental data
│
└── references/
    └── references.txt
```

---

## Software

| Tool | Purpose |
|------|---------|
| [COPASI](http://copasi.org/) | ODE model building, simulation, and parameter scanning |
| SBML (Systems Biology Markup Language) | Model exchange format |
| [Newt Editor](https://newteditor.org/) | SBGN diagram creation for pathway and reaction network visualization |
| GraphPad Prism | Data analysis, figure generation |


---

## References

- **Arnold, T.E. et al. (2001)** — Kinetic model of T7 RNAP; first quantitative description of PPi competitive inhibition and non-promoter binding constants.
- **Akama, K. et al. (2012)** — Thermodynamic control of IVT; Mg₂P₂O₇ precipitation as mechanism of reaction shutdown.
- **Gholamilipour, Y. et al. (2018)** — Experimental demonstration of the 3′-loopback mechanism; T7 RNAP rebinds mRNA 3′ end for distributive primer extension.
- **Stover, C. et al. (2025)** — Mechanistic modeling of initiation/elongation competition and dsRNA generation via 3′-loopback under mass-action kinetics.
- **Gunderson, S.I. et al. (1987)** — Binding constants of T7 RNAP for promoter vs. non-promoter DNA sites (~10⁴-fold difference).

*© 2026 Jean-Philippe Seiler — FH Aachen University of Applied Sciences*
