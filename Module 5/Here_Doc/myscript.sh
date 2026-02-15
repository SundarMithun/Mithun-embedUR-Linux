
if [[ "$1" == "--help" ]]; then
cat <<EOF
Usage: $0 [options]

Options:
  -f <file>      File to search
  -k <keyword>   Keyword to search
  --help         Display this help menu

Example:
  $0 -f script.sh -k TODO
EOF
exit 0
fi


if [[ "$1" == "-f" && "$3" == "-k" ]]; then
    file="$2"
    keyword="$4"


    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found!"
        exit 1
    fi

    echo "Searching for '$keyword' in file '$file'"


    grep "$keyword" <<< "$(cat "$file")"


    echo "Exit status: $?"
else
    echo "Invalid usage. Use --help for guidance."
fi

