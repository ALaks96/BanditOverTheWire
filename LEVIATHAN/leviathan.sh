# Solution to Leviathan levels
# Leviathan 0 -> 1
ssh leviathan0@leviathan.labs.overthewire.org -p 2223
leviathan0
ls -al
cd .backup # Here we can see that leviathan1 was owner of the directory
ls -al
vim bookmarks.html # HTML is way too big, we'll need to find a specific thing related to leviathan1
cd ..
grep -rnw '/.backup' -e 'leviathan1'
vim /.backup/bookmarks.html # Go to line 1057

# Leviathan 1 -> 2
 
