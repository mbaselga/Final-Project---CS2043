#!/bin/bash

#curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n '/<description>/,/<\/description>/p'| head -n-1 | tail -n+2


#curl -s http://www.movies.com/rss-feeds/top-ten-box-office-rss |  sed -n 's/^.*\(<description.*description\).*/\1/p'
#curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<description>\(.*\)<\/description>.*/\1/p'
#decalre -a synopsis=( $(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<description>\(.*\)<\/description>.*/\1/p') )
#IFS=$'\n'; arr=( $(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<description>\(.*\)<\/description>.*/\1/p'| sed 's/\<\!\[CDATA\[//' |) ); for i in ${arr[@]} ; do echo $i ; done

#IFS=$'\n';arr1=( $(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<title>\<\!\[CDATA\[\(.*\)\]\]\><\/title>.*/\1/p'  | sed '1d') ); for i in ${arr1[@]} ; do echo $i ; done
#intro = $(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<title>\<\!\[CDATA\[\(.*\)\]\]\><\/title>.*/\1/p'  | sed '1d')
#echo $intro

#!/bin/bash


for((; ;))
do
curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<title><\!\[CDATA\[\(.*\)\]\]><\/title>.*/\1/p' | sed '1d'

IFS=$'\n'; arr=( $(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed -n 's/.*<description><\!\[CDATA\[\(.*\)<\/description>.*/\1/p'| sed 's/~ Jason Buchanan, Rovi.*//' | sed 's/\].*//') );
printf "Choose a movie (1-10) >"
read option
printf "\n"
printf "Movie %s\n" "$option"
printf "Synopsis"
printf "\n"

if [[ $option -eq 1 ]]; then
	printf "%s\n" "${arr[1]}"
elif [[ $option -eq 2 ]]; then
		printf "%s\n" "${arr[2]}"
elif [[ $option -eq 3 ]]; then
		printf "%s\n" "${arr[3]}"
elif [[ $option -eq 4 ]]; then
		printf "%s\n" "${arr[4]}"
elif [[ $option -eq 5 ]]; then
		printf "%s\n" "${arr[5]}"
elif [[ $option -eq 6 ]]; then
		printf "%s\n" "${arr[6]}"
elif [[ $option -eq 7 ]]; then
		printf "%s\n" "${arr[7]}"
elif [[ $option -eq 8 ]]; then
		printf "%s\n" "${arr[8]}"
elif [[ $option -eq 9 ]]; then
		printf "%s\n" "${arr[9]}"
elif [[ $option -eq 10 ]]; then
		printf "%s\n" "${arr[10]}"		
										
	fi

printf "\n"

printf " Press enter to return to the main menu"
for((; ;))
do
read dummy
break

done
printf "\n"


done

