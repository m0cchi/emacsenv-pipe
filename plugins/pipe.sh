RAND=/dev/urandom
ls $RAND &> /dev/null

if [ ! $? -eq 0 ]; then
    RAND=/dev/random
    ls $RAND &> /dev/null
    if [ ! $? -eq 0 ]; then
        exit 1
    fi
fi

TMP_FILENAME=$(cat $RAND | LC_CTYPE=C tr -dc '[:alnum:]' | head -c 40)
TMP_FILENAME=/tmp/emacsenv_$TMP_FILENAME.tmp

while read line; do
    echo "$line" >> $TMP_FILENAME
done

emacs $TMP_FILENAME $* < /dev/tty

rm -f $TMP_FILENAME
