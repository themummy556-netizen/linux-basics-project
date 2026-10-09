# Challenges & Solutions - Project 1

## Challenge 1: Wrong Working Directory
**Problem**: Commands didn't work because I was in wrong folder
**Solution**: Used `pwd` to check location, then `cd` to correct folder
**Lesson**: Always verify your working directory before running commands

## Challenge 2: Permission Denied
**Problem**: Couldn't execute script or modify files
**Solution**: Used `chmod 755 filename` to add execute permission
**Lesson**: Understanding file permissions (rwx) is essential

## Challenge 3: Large Output
**Problem**: `ls` or `grep` returned too much output to read
**Solution**: Piped output to `head`, `tail`, or `grep` to filter
**Lesson**: Command chaining and piping is powerful for managing output

## Challenge 4: Finding Files
**Problem**: Couldn't locate specific files in the directory tree
**Solution**: Used `find` command with patterns
**Lesson**: `find` is essential for large projects with many files
