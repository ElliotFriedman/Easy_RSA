#command to encrypt a message in x file with y key

ARGC=$#  # Number of args, not counting $0

#check if we have 3 args, if so, run encryption
if [ $3 ]; then
	openssl pkeyutl -encrypt -in "${1}" -pubin -inkey "${2}" -out "${3}"
	echo "
check file ${3} for encrypted output
"
else
	echo "
  $ARGC is an incorrect Number of arguments.

	Enter 3 arguments

	arg 1: file to be encrypted
	arg 2: file with public key
	arg 3: file to write the encrypted file to
	
	e.g. sh command.sh message.txt pubkeyB.txt ciphertext.bin
"
fi
