<?php
// get the key of the paper
$bib_key = $_GET["key"];

header('Content-disposition: attachment; filename=' . $bib_key . '.bib'); 
header('Content-type: application/x-bibtex');

// load the XML document
$xmlDoc = new DOMDocument();
$xmlDoc->validateOnParse = true;
$xmlDoc->load("publications.xml");

// load XSL style bibtex-revtex.xsl
$xslDoc = new DOMDocument();
$xslDoc->load("bibtex-revtex.xsl");

$proc = new XSLTProcessor();
$proc->importStylesheet($xslDoc);

// find the element with the specified key
$articleNode = $xmlDoc->getElementById($bib_key);
$articleXML = $articleNode->ownerDocument->saveXML($articleNode);

// prepare new document for transformation
$outDoc = new DOMDocument();
$outDoc->loadXML('<publications>'. $articleXML . '</publications>');

// process the node with the specified key
echo $proc->transformToXML($outDoc)
?>
