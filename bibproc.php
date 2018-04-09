<?php
function bibproc($data, $style) {

  $xslDoc = new DOMDocument();
  $xslDoc->load($style);

  $xmlDoc = new DOMDocument();
  $xmlDoc->validateOnParse = true;        
  $xmlDoc->load($data);

  $proc = new XSLTProcessor();
  $proc->importStylesheet($xslDoc);

  return $proc->transformToXML($xmlDoc);
}

if ( isset($argc) ) {
  if ($argc!=3) {
	print 'Usage: ' . $argv[0] . ' data.xml' . ' style.xsl' . "\n";
	exit (1);
  } else {
	echo bibproc($argv[1], $argv[2]);
	exit (0);
  }
}

?>
