# LaTeX + Sphinx

Container for building various HEIG-VD documents using LaTeX and Python Sphinx.

## Usage

To run the container use:

```
docker run --rm --it -v ${pwd}:/data nowox/latex:latest latexmk -pdf filename.tex
```
