#!/bin/bash
      

  while ! nc -z localhost 225;
        do
          echo sleeping;
          sleep 1;
        done;
        echo Connected!;
