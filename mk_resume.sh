#!/bin/bash

pdflatex $1

shortname=`echo $1 | sed s/tex/pdf/`
echo "Moving $shortname to webspace"
cp $shortname /home/$USER/solaris/public_html/
chmod a+r /home/$USER/solaris/public_html/$shortname
echo "look at http://web.cecs.pdx.edu/~$USER/$shortname"
