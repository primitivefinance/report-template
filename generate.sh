#!/bin/bash
# pandoc with gfm flavored markdown seems to have issues regarding
# A temporary work around to have page breaks.
# FIXME figure out a way to natively do this.
sed -i 's/textbackslash clearpage/clearpage/g' report.tex
# On github CI, pandoc seems to be generating the following
sed -i 's/textbackslash{}clearpage/clearpage/g' report.tex
xelatex -shell-escape -interaction nonstopmode main.tex
# Running it a second time to generate references
xelatex -shell-escape -interaction nonstopmode main.tex