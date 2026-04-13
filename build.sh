#!/bin/dash

mkdir -p _site

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Jassachusetts GIFs</title>
	<link rel="stylesheet" href="https://www.jassachusetts.org/style.css"/>
	<link rel="stylesheet" href="https://www.jassachusetts.org/fonts.css"/>
</head>
<body>
	<h1>Jassachusetts GIFs</h1>' > _site/index.html

for file in ./*; do
	if [ ${file##*.} = 'gif' ]; then
		cp $file _site
		echo "<img src=\"$file\">" >> _site/index.html
	fi
done

echo "</body>\n</html>" >> _site/index.html



