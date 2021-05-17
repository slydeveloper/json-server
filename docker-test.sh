#!/bin/bash

clear
echo "Testing slydeveloper/json-server container..."

sleep 1
echo "Testing GET..."
http localhost:8000/test

sleep 1
echo "Testing POST..."
http POST localhost:8000/test \
	title=new_test$((RANDOM%10))	\
	author=new_author$((RANDOM%10))

sleep 1
echo "Testing GET..."
http localhost:8000/test

