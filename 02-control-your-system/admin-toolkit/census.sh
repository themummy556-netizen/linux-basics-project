#!/bin/bash
echo $(find ~/devops-journey/02-control-your-system -type f -name '*.txt' | wc -l)
echo $(find ~/devops-journey/02-control-your-system -type f | wc -l)
echo $(find ~/devops-journey/02-control-your-system -type d | wc -l)
