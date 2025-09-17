# Thesis Template

This is a LaTeX template for a thesis.

## Structure

The following `folders` and `files` are part of this document:

```
├── .auxiliary /
├── .git /
├── build / 
├── content /
|   ├── chapters /
|   |   ├── abstract.tex
|   |   ├── acknowledgments.tex
|   |   ├── appendixA.tex
|   |   ├── appendxiB.tex
|   |   ├── chapter01_Introduction.tex
|   |   ├── chapter02_Methods.tex
|   |   ├── chapter03_Results.tex
|   |   ├── chapter04_Conclusion.tex
|   ├── 00frontmatter.tex
|   ├── 01main.tex
|   ├── 02appendix.tex
|   └── 03backmatter.tex
├── figures /
|   ├── ...
|   └── ...
├── settings / 
|   ├── biblatex-mnras.bbx
|   ├── biblatex-mnras.cbx
|   ├── bibliography.bib
|   ├── thesis.sty
|   ├── thesis-config.sty
|   └── thesis-glossaries.tex
├── .gitignore
├── .latexmkrc
├── my-thesis.tex
└── README.md
```

* **.auxiliary**: The files that are created while compiling the document. They can be ignored.
* **build**: The output files, including the pdf are placed here.
* **content**: The document is divided into five parts. These are the .tex files directly in this folder. They define the rough style and load the real content from the .tex files in the chapter/ folder.
* **figures**: The figures that are used in the thesis. Ideally as `.pdf` or `.pgf`, but some are also `.jpg`.
* **settings**: The style files for this document:
    * `biblatex-mnras.bbx`: bibliography style (similar to MNRAS). 
    * `biblatex-mnras.cbx`: citation style (similar to MNRAS).
    * `bibliography.bib`: The file with the references used in the document.
    * `thesis.sty`: This file defines the style of the document.
    * `thesis-config.sty`: This file contains extra commands specific for this document.
    * `thesis-glossaries.sty`: This file contains the abbreviations for this document.
* `.gitignore`: Handles the interaction with git (like ignoring auxiliary files).
* `.latexmk`: It is complex to compile the document. Therefore *latexmk* is used. This file defines the steps 
* `my-thesis`: The main tex file that is compiled.


## Compile

This document requires you to run `pdflatex`, `makeglossaries` and `biber`. It is easiest to let `latexmk` decide how many runs are required. A `.latexmkrc` file provides helps with that and also writes the auxiliary files into the `.auxiliary` folder to avoid cluttering of the main workspace. 



## Use with VS Code

My texteditor of choice is [Visual Studio Code](https://code.visualstudio.com/). In combination with [LaTeX-Workshop](https://github.com/James-Yu/LaTeX-Workshop)

```
"latex-workshop.latex.tools": [
  {
    "name": "pdflatex",
    "command": "pdflatex",
    "args": [
      "-synctex=1",
      "-interaction=nonstopmode",
      "-file-line-error",
      "-aux-directory=auxiliary",
      "%DOC%"
    ],
    "env": {}
  }
],
"latex-workshop.latex.recipes": [
  {
    "name": "pdflatex (aux)",
    "tools": [
      "pdflatex"
    ]
  }
],
```