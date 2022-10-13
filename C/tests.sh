RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

DIFF_COLLEEN=$(./Colleen | diff Colleen.c -)

if [ "$DIFF_COLLEEN" != "" ]
then
    printf "${RED}Colleen:"
    ./Colleen | diff Colleen.c -
else
    printf "${GREEN}Colleen: everything is fine\n"
fi


./Grace
DIFF_GRACE=$(diff Grace.c Grace_kid.c)

if [ "$DIFF_GRACE" != "" ]
then
    printf "${RED}Grace:"
    diff Grace.c Grace_kid.c
else
    printf "${GREEN}Grace: everything is fine\n"
fi
