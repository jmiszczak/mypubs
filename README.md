# mypubs

Package `mypubs` provides XSLT styles, XML schema and PHP processor for personal bibliography.

# Usage

This package can be used off-line for producing list of publication is desired format. The simplest method is to use `xsltproc` tool. In this case produce LaTeX list from data contained in `publications.xml`, by running

```bash
xsltproc publications.xml latex-doc-list.xsl
```

As the main goal of this software is to produce a web page, it is aslo possible to achive this effect by runing 

```bash
php bibproc.php publications.xml latex-doc-list.xsl
```

File `index.php` can be used to generate HTML list with data from `publications.xml` and displaying them of the personal home page.

File `bibtex.php` is used to produce BiBTeX files, used in the list produced by `index.php`.

# Examples

The package is used at http://iitis.pl/~miszczak/papers
