RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

DIFF=$(./Colleen | diff Colleen.c -)

if [ "$DIFF" != "" ]
then
    printf "${RED}"
    ./Colleen | diff Colleen.c -
else
    printf "${GREEN} everything is fine\n"
fi
