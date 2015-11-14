cd $1
for f in *.class; do
    FILE=${f%.*}
    export FILE # Really not needed anymore
    javap ${f%.*} | bash testifmain.sh
    ST=$?
    echo ${ST}
    if [ ${ST} == 1 ]; then
        .././test.sh ../test.in 1 | java ${FILE}
    fi
done
