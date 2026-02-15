ERROR_LOG="errors.log"

log_error() {
  echo "Error: $1" | tee -a "$ERROR_LOG"
}

file=$1
keyword=$2

if [ ! -z "$file" ] && [ ! -f "$file" ]; then
  log_error "Invalid file: $file"
  exit 1
fi

if [ -z "$keyword" ]; then
  log_error "Keyword cannot be empty"
  exit 1
fi

echo "Inputs are valid."



