# Krypton 1 -> 2
echo "S1JZUFRPTklTR1JFQVQ=" | base64 -d
ssh krypton1@krypton.labs.overthewire.org -p 2222
cat krypton2
cat krypton2 | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'

# krypton 2 -> 3
mktemp -d
cd /tmp/tmp.r110Ux49NO
ln -s /krypton/krypton2/keyfile.dat
chmod 777 .
vi temp # insert ABCDEFGHIJKLMNOPQRSTUVWXYZ
/krypton/krypton2/encrypt temp # Shows us the rotation used 
cat /krypton/krypton2/krypton3 | tr "M-ZA-Lm-za-l" "A-Za-z" 

# krypton level 3 -> 4
cat HINT1
cat HINT2
cat found1
cat found2
cat found3
# Go to a frequency analysis website to check occurences of characters and compare. This will be the key to substitute the characters in krypton 3.
cat krypton 3 | tr ABCDEFGHIJKLMNOPQRSTUVWXYZ BOIHGKNQVTWYURXZAJEMSLDFPC

# krypton level 4 -> 5
ls -al
cat HINT
cat found1
cat krypton5
# We use a viginère decipher program to get key, hint tells us key is of length 6 which easily gives us the password for the next level

# krypton level 5 -> level 6
ls -al
cat found1
cat found2
cat found3
# First we need to find the highest probabilty of length of key word so we try analysing with the same site as before. We see that length of 9 is the most recurring result.
# Then we register every key cracked from the cipher texts: yeylergth, koylenvtq, yeylergth.
# same key comes up twice. Trying out gives us the password.
cat krypton6 # BELOS Z == RANDO M



