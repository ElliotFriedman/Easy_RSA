#command to encrypt a message in x file with y key

ARGC=$#  # Number of args, not counting $0

#check if we have 3 args, if so, run encryption
if [ $2 ]; then
	openssl pkey -in "${1}" -out "${2}" -pubout
	echo "
check file ${2} for public key
"
else
	echo "
  $ARGC is an incorrect Number of arguments.

	Enter 2 arguments

	arg 1: file with private key
	arg 2: file to write public key
	
	e.g. sh gen_pub.sh privkeyA.txt pubkeyA.txt
"
fi
