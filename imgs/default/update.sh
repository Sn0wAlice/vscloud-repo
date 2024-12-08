# Get the arg, this is the path to programming language
PROG_LANG=$1

# Check if the arg is empty
if [ -z "$PROG_LANG" ]; then
    PROG_LANG="default"
fi

if [ "$PROG_LANG" = "default" ]; then
    # nothing
    echo "Default"
else
    echo "Programming language: $PROG_LANG"
    cat ../$PROG_LANG/Dockerfile >> Dockerfile
fi

cat ./Dockerfile.end >> Dockerfile

if [ "$PROG_LANG" = "default" ]; then
    # nothing
    echo "Default"
else
    echo "Programming language: $PROG_LANG"
    cat ../$PROG_LANG/Dockerfile.post >> Dockerfile
fi

cat ./Dockerfile.done >> Dockerfile