# Thesis Template

This is a preliminary template for my PhD thesis (already contains some notes).


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