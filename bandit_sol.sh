#! /bin/bash

## Find all bandit passwords in BANDIT_WARGAME file

## Bandit0
## Connect with ssh : ssh  bandit0@banditlabs.overthewire.org -p 2220
ls
cat readme

## Bandit1
## Connect with ssh : ssh  bandit1@bandit.labs.overthewire.org -p 2220

ls -al
cat ./*

## Bandit2
## Connect with ssh : ssh  bandit2@bandit.labs.overthewire.org -p 2220
ls -al
cat "spaces in this filename"

## Bandit3
## Connect with ssh : ssh  bandit3@bandit.labs.overthewire.org -p 2220
ls -la inhere/
cat inhere/.hidden

## Bandit4
## Connect with ssh : ssh  bandit4@bandit.labs.overthewire.org -p 2220
file inhere/*
cat inhere/-file07

## Bandit5
## Connect with ssh : ssh  bandit5@bandit.labs.overthewire.org -p 2220
find /home/ -type f -size 1033c -exec ls {} \;
cat /home/bandit5/inhere/maybehere07/.file2

## Bandit6
## Connect with ssh : ssh  bandit6@bandit.labs.overthewire.org -p 2220
find / -group bandit6 -user bandit7
cat /var/lib/dpkg/info/bandit7.password

## Bandit7
## Connect with ssh : ssh  bandit7@bandit.labs.overthewire.org -p 2220
grep "millionth" data.txt

## Bandit8
## Connect with ssh : ssh  bandit8@bandit.labs.overthewire.org -p 2220
cat data.txt |sort | uniq -c |grep "1 "






