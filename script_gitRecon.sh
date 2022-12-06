#!/bin/bash
host=$1

github_recon() {
for domain in $(cat $host);
do
mkdir -p /root/github-recon/$domain
echo -e "\n${CYAN}
\t+-+-+-+-+-+-+
\t|R|4|G|H|4|V|
\t+-+-+-+-+-+-+
${RESET}\n"
python3 GitDorker.py -tf token.txt -q $domain -d /root/tools/wordlists/keywords.txt -o /root/github-recon/$domain/results.txt
done
}
github_recon
