#!/bin/bash
echo $(find ~/devops-journey/projects/level2-practice -type f -name '*.txt' | wc -l)
echo $(find ~/devops-journey/projects/level2-practice -type f | wc -l)
echo $(find ~/devops-journey/projects/level2-practice -type d | wc -l)
