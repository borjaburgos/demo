#!/bin/bash
python app.py > /dev/null &
sleep 5
if curl http://localhost:80 | grep -q '<b>Visits:</b> 1<br/>'; then
  echo -e "\e[42m-------------"
  echo -e "\e[42m-\e[92m Tests passed\e[42m-"
  echo -e "\e[42m-------------"
  exit 0
fi
echo -e "\e[41m-------------"
echo -e "\e[91m Tests failed"
echo -e "\e[41m-------------"
exit 1
