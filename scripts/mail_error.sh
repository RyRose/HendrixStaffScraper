#!/bin/bash
cat email/alert.txt out/script.log | ssmtp RosadeApps@gmail.com;
