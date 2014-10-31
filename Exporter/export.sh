#!/bin/bash

wget https://www.w3.org/community/ontolex/wiki/index.php?title=Final_Model_Specification\&action=edit -O spec-raw.html

python export.py > spec-processed.html

pandoc -f mediawiki -t html spec-processed.html > spec.html

cat header spec.html footer > ../specification.html
