#!/bin/bash
python app.py > /dev/null &
sleep 5
if curl localhost | grep -q '<b>Visits:</b> 1<br/>'; then
  exit 0
fi
exit 1
