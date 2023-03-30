@echo off
set PWD=%cd%

cd %PWD%/ms-flights 
make start

cd %PWD%/ms-reservations
make start

cd %PWD%
make proxystart

set PWD=
exit