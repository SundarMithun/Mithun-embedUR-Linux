while getopts "d:k:f:" opt; do
  case $opt in
    d) directory=$OPTARG ;;
    k) keyword=$OPTARG ;;
    f) file=$OPTARG ;;
    *) echo "Usage: $0 -d <directory> -k <keyword> -f <file>"
       exit 1 ;;
  esac
done

echo "Directory: $directory"
echo "Keyword: $keyword"
echo "File: $file"

