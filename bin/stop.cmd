@echo off
set PWD=%cd%

cd %PWD%/ms-flights 
make stop

cd %PWD%/ms-reservations
make stop

cd %PWD%
make proxystop

set PWD=
exit