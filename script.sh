#!/bin/bash

# Create user
useradd marvel
cat /etc/passwd

# Create directory
mkdir course
ls -l

# Change permission
chmod 750 course
ls -l
chmod u=rwx,g=r,o=r course
ls -l

# Change directory
cd course/

# Create data inside file
echo "This is a test file" > test.txt
cd

# Search for files that contains error word
find / -name "error" 2>/dev/null
cat course/test.txt

# Make alias
alias n='nano'
alias h='history'
alias d='date'

# Check the path
pwd

# Copy file
cp course/test.txt /tmp
ls -l /tmp

# Rename file
mv course/test.txt course/marvel.txt
ls -l course/

# Move file
mv course/marvel.txt /tmp
ls -l /tmp

# Remove directory
rm -rf course/
ls -l

# Delete user
userdel marvel
cat /etc/passwd

# Switch user
su -- vboxuser
