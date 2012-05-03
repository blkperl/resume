#!/bin/bash

pdflatex $1

shortname=`echo $1 | sed s/tex/pdf/`
echo "Moving $shortname to webspace"
cp $shortname /home/$USER/solaris/public_html/
chmod 644 /home/$USER/solaris/public_html/$shortname
echo "look at web.cecs.pdx.edu/~$USER/$shortname"
