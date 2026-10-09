# Challenges & Solutions - Project 1

## Challenge 1: Wrong Working Directory
**Problem**: Commands didn't work because I was in the wrong folder.
**Solution**: Used pwd to check current location and cd to move to correct directory.
**Lesson**: Always verify your working directory before running commands.

## Challenge 2: Permission Denied
**Problem**: Some files couldn't be modified or executed.
**Solution**: Used chmod 755 or chmod 644 to adjust file permissions.
**Lesson**: Linux permissions are critical for security and file access control.

## Challenge 3: Large Output
**Problem**: Commands produced too much output to read on screen.
**Solution**: Used grep to filter by keyword, head to show first lines, tail to show last lines.
**Lesson**: Command piping and filtering makes Linux work more efficiently.

## Challenge 4: Finding Files
**Problem**: Needed to locate specific files quickly in directories.
**Solution**: Used find command with patterns like find . -name "*.txt".
**Lesson**: Proper directory organization and search skills save time in large projects.
