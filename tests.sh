#!/bin/bash
python app.py &> /dev/null
sleep 5
if curl http://localhost:80 | grep -q '<b>Visits:</b> 3<br/>'; then
  exit 0
fi
exit 1
