#!/bin/bash

# ================================
# Web Log Analyser
# ================================

LOG_FILE="NASA_access_log_Jul95"

echo "=============================="
echo "     WEB LOG ANALYSER"
echo "=============================="
echo "Log file : $LOG_FILE"
echo "Total requests: $(wc -l < $LOG_FILE)"
echo ""

# --- TOP 5 IPs ---
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -rn | head -5 | while read count ip; do
    echo "$ip - $count requests"
done
echo ""

# --- TOP 5 CAMINHOS ---
echo "Top 5 most requested paths:"
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -rn | head -5 | while read count path; do
    echo "$path - $count requests"
done
echo ""

# --- TOP 5 STATUS CODES ---
echo "Top 5 response status codes:"
awk '$9 ~ /^[0-9]+$/ {print $9}' $LOG_FILE | sort | uniq -c | sort -rn | head -5 | while read count code; do
    echo "$code - $count requests"
done
echo ""

# --- TOP 5 USER AGENTS ---
echo "Top 5 user agents:"
echo "N/A - This log predates user agent tracking (NASA, 1995)"
echo ""
