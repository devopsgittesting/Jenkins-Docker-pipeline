#!/bin/bash
HOSTNAME=$(hostname)
sudo echo "<!DOCTYPE html> <html> <body>VM Instance Name: $HOSTNAME
<p><strong>VM IP Address:<strong> $(hostname -i)</p></body></html>" | sudo tee /usr/local/apache2/htdocs/
