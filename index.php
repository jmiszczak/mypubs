<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Jarek Miszczak - Publications</title>
  <meta name="AUTHOR" content="Jarek Miszczak" />
  <meta name="KEYWORDS" content="quantum information, random numbers, scientific software" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="../lib/main.css" />
</head>
<body>

<h1 class="section">Publications</h1>

<h2 class="section">papers:</h2>

<ol>

<?php include "bibproc.php"; ?>

<?php echo bibproc("publications.xml", "papers-html.xsl"); ?>

</ol>

<h2 class="section">books:</h2>

<ol>

<?php echo bibproc("publications.xml", "books-html.xsl"); ?>

</ol>

<h2 class="section">preprints:</h2>

<ol>

<?php echo bibproc("publications.xml", "preprints-html.xsl"); ?>

</ol>

<h2 class="section">thesis:</h2>
<ul>
    <li><a href="../files/thesis/dsc-miszczak-pl.pdf">Polish</a> and <a href="../files/thesis/dsc-miszczak-en.pdf">English</a> version of DSc application (habilitation) in technical sciences. Faculty of Automatic Control, Electronics and Computer Science, Silesian University of Technology, 2014.</li>
    <li><a href="../files/thesis/phd-miszczak.pdf">PhD thesis</a> in computer science, Institute of Theoretical and Applied Informatics, Polish Academy of Sciences, Gliwice, 2008 (in English). Supervisor: Jerzy Klamka.</li>
    <li><a href="../files/thesis/mgr-miszczak.pdf">MSc thesis</a> in theoretical physics, University of Silesia, Katowice, 2003 (in Polish). Supervisor: Sławomir Bugajski.</li>        
</ul>   


<p>
<a href="..">main page</a>
</p>

<p>
<span>&copy; 2005-2018 J.A. Miszczak</span><br />
<span>Last modification: <?php echo date("d/m/Y", filemtime("index.php") ); ?></span>
</p>

<p>
  <a href="http://validator.w3.org/check?uri=referer"><img
      src="http://www.w3.org/Icons/valid-xhtml10"
      alt="Valid XHTML 1.0!" height="31" width="88" /></a>

    <a href="https://jigsaw.w3.org/css-validator/check/referer">
        <img style="border:0;width:88px;height:31px"
            src="https://jigsaw.w3.org/css-validator/images/vcss"
            alt="Poprawny CSS!" />
    </a>
</p>

<!-- stat.4u.pl NiE KaSoWaC -->
<a href="http://stat.4u.pl/?jarekadam"><img src="http://adstat.4u.pl/s4u.gif" alt="stat4u" style="border: 0px;" /></a>
<script>
<!--
function s4upl() { return "&amp;r=er";}
//-->
</script>
<script src="http://adstat.4u.pl/s.js?jarekadam"></script>
<script>
<!--
s4uext=s4upl();
document.write('<img alt="stat4u" src="http://stat.4u.pl/cgi-bin/s.cgi?i=jarekadam'+s4uext+'" width="1" height="1">')
//-->
</script>
<noscript><img alt="stat4u" src="http://stat.4u.pl/cgi-bin/s.cgi?i=jarekadam&amp;r=ns" width="1" height="1" /></noscript>
<!-- stat.4u.pl KoNiEc -->

<span>
    <a href="http://english-97417200548.spampoison.com">
    <img src="http://pics3.inxhost.com/images/sticker.gif" width="80" height="15" alt="SpamPoison"/>
    </a>
</span>

</body>
</html>
