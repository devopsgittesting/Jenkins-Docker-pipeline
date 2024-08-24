#!/bin/bash
HOSTNAME=$(hostname)
echo "HOSTNAME :$HOSTNAME VM IP Address: $(hostname -i)" | tee /usr/local/apache2/htdocs/index.html
#echo "<!DOCTYPE html><html><body>VM Instance Name: $HOSTNAME
#<p><strong>VM IP Address:<strong> $(hostname -i)</p></body></html>" | tee /usr/local/apache2/htdocs/index.html
sleep 40
