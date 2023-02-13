#!/bin/bash

echo 'Thanks for using this simple web scraper.'

# deciding whether to visit or to crawl
echo 'What should this program perform? 1: visiting a website, 2: crawling the web through links (please enter 1 or 2)'
read action

if [ $action == '1' ]
then
    scraper='scripts/visit-website.sh'
    echo "Which website should the program visit? (Enter URL)"
    read start_url
    repetition=1
else
    scraper='scripts/crawler.sh'
    echo "At which website should the program begin? (Enter URL)"
    read start_url
    echo "How many websites should the program visit? (Enter integer)"
    read repetition  
fi

# deciding what information to find
echo "What information do you want from the web pages?"
echo "1: find all links"
echo "2: find content within a certain tag"
echo "3: find lines that contain a certain word"
echo "Please enter 1,2 or 3:"
read search_mode

# deciding how to save the information
echo "How would you like to save the information?"
echo "1: Display in terminal"
echo "2: Save as txt file"
read save_mode

$scraper $start_url $repetition $search_mode $save_mode