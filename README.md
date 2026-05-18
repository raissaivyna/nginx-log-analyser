# Web Log Analyser

A shell script to analyze web server access logs and extract traffic insights.

## Dataset

Analyzed 1,891,714 real HTTP requests from NASA's public web server logs (July 1995),
one of the most well-known public datasets for log analysis.

Note: This dataset predates user agent tracking — browsers in 1995 did not send
user agent information in HTTP requests.

## Usage

    ./web-log-analyser.sh <log-file>

## What it shows

- Top 5 hosts/IPs with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents (when available)

## Example output

    ==============================
         WEB LOG ANALYSER
    ==============================
    Log file : NASA_access_log_Jul95
    Total requests: 1891714

    Top 5 IP addresses with the most requests:
    piweba3y.prodigy.com - 17572 requests
    ...

## Requirements

- Linux (any distribution)
- Bash
- Tools: awk, sort, uniq, head

## Log format

    host - - [timestamp] "METHOD /path HTTP/version" status bytes

## Dataset

This script was tested with NASA's HTTP server logs (July 1995), a well-known
public dataset with 1,891,714 real requests.

Download:

    ftp://ita.ee.lbl.gov/traces/NASA_access_log_Jul95.gz

After downloading, extract with:

    gunzip NASA_access_log_Jul95.gz

Then run:

    ./web-log-analyser.sh
