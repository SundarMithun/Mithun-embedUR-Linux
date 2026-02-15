ERROR_LOG="errors.log"

log_error() {
  echo "Error: $1" | tee -a "$ERROR_LOG"
}

# Example usage
file=$1

if [ ! -f "$file" ]; then
  log_error "File '$file' does not exist."
  exit 1
fi

echo "File exists."

