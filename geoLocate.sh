#!/bin/bash

echo -e "Ingrese dirección ip"
read -p ":" ip
curl "https://api.ip2location.io/?key={YOUR_API_KEY}&ip=${ip}"
