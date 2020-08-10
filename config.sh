
#!/bin/bash

filename='demo.txt'


if grep -Rw 'demo.txt' -e 'FAILURE'
then
          echo "I found 'FAILURE' word in LOG"
    fi
