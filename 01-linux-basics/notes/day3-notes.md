# Day 3: Permissions & Advanced Filtering

## What I Learned
- File permissions (rwx) and their meaning
- chmod for changing permissions
- Advanced grep patterns
- Combining commands for complex tasks

## Commands Practiced
- chmod 755 filename
- chmod 644 filename
- grep -i "pattern" (case insensitive)
- grep -v "pattern" (exclude)
- cat file | grep | head

## Challenge
Understanding octal permissions (755, 644, 700)

## Solution
Learned that:
- 7 = read + write + execute (rwx)
- 5 = read + execute (r-x)
- 4 = read only (r--)

## Key Takeaway
Permissions are critical for security and controlling who can access files
