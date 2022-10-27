#!/bin/sh
swiftc quick.swift
chmod +x quick
a=$(date +%s%N | cut -b1-13)
./quick 2000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(quick): "$res

a=$(date +%s%N | cut -b1-13)
./quick 5000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(quick): "$res

a=$(date +%s%N | cut -b1-13)
./quick 15000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(quick): "$res


swiftc selection.swift
chmod +x selection
a=$(date +%s%N | cut -b1-13)
./selection 2000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(selection): "$res

a=$(date +%s%N | cut -b1-13)
./selection 5000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(selection): "$res

a=$(date +%s%N | cut -b1-13)
./selection 15000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))
echo "Rezultat(selection): "$res