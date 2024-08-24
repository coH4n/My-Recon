getcount(){
cat all.txt | wc -l 
}

crtsh(){
curl -s https://crt.sh/?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | awk 'NF'
}

trycrtsh(){
curl -s 'https://crt.sh/?q=%25hk%25.yahoo.com&output=json' | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u 
}
