#command to encrypt a message in x file with y key

ARGC=$#

#check if we have 1 args
if [ $1 ]; then
	openssl genrsa -out "${1}"
	echo "
check file ${1} for public key
"
else
	echo "
  $ARGC is an incorrect Number of arguments.

	Enter 1 arguments

	arg 1: file to store private key
	
	e.g. sh gen_rsa.sh privkeyA.txt
"
fi
