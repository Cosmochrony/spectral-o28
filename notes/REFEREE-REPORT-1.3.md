# Referee Report — O28 version 1.3

Date: 2026-07-20

## Verdict

Accept after revision. The required revisions were applied during the review, and the final source
and rendered PDF pass the pre-deposit gate.

## Scope reviewed

- Tier-A integration of the Critical Coverage note into O28.
- Attribution of empirical and analytical claims in Part A.
- Status of the covariance-rank and spectral-degeneracy claims in Part B.
- Abstract, conclusion, README, bibliography, PDF metadata, compilation, text extraction, and visual
  rendering.

## Required revisions applied

1. **Finite data versus asymptotic limit.** The draft inferred $n_1(q)/q \to 0$ from four
   out-of-sample primes. The paper now states only what those data establish independently: the
   calibrated OLS extrapolation fails over the tested range. The asymptotic limit is attributed
   exclusively to the exact interval theorem of the Critical Coverage note.
2. **Exact rank versus numerical threshold rank.** The covariance result was described as algebraic
   rank exactly three although the reported statistic is the $1\%$ threshold rank. The abstract,
   interpretation, discussion, conclusion, and README now use the operationally correct statement
   $r_{\mathrm{eff}}^{1\%}=3$ and refer to three resolved modes.
3. **Status of the eigenvalue degeneracy.** The draft claimed that Born--Infeld parity alone forces
   $\lambda_2=\lambda_3$. O29 supplies an axial interpretation, while the analytical derivation of
   the degeneracy and the ratio $\lambda_1:\lambda_2=2:1$ remains open. The remark now states this
   distinction explicitly.
4. **Abstract discipline.** All formal citation commands were removed from the abstract. A labelled
   interpretive statement was added there, and an `Interpretive outlook` was added to the conclusion.
5. **Publication layer.** Latin Modern, Unicode glyph mapping, the DOI package, and complete PDF
   title/author/subject/keyword metadata were added. The Critical Coverage bibliography entry is
   identified as a preprint rather than a working paper.

## Verification

- Full cycle: `pdflatex -> bibtex -> pdflatex x2`.
- 0 LaTeX errors.
- 0 undefined references or citations.
- 0 overfull or underfull boxes.
- 0 package warnings in the final log.
- 9 pages; abstract and keywords remain on page 1; contents on page 2.
- PDF metadata populated and author accents extract correctly.
- Text extraction contains no replacement glyphs and includes the Critical Coverage reference and
  the interpretive outlook.
- All 9 pages rendered to PNG and visually inspected: no clipping, overlap, broken table, or
  unreadable figure was found.
- Data, tables, scripts, figures, and numerical outputs were not modified. No new numerical campaign
  was run.

## Gate decision

The referee gate for O28 version 1.3 is passed. The version may proceed to the release protocol.
