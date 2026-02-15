req_params=("frame.time" "wlan.fc.type" "wlan.fc.subtype")

while IFS= read -r line; do
    for param in "${req_params[@]}"; do
        if [[ $line == *"$param"* ]]; then
            echo "$line" >> output.txt
        fi
    done
done < input.txt
echo "Completed"
