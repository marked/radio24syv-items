#!/bin/sh
find json* -type f | grep -v 3561248 | xargs jq  .[].videoPodcastId | sort -n | uniq > none-news.txt
find json* -type f | grep    3561248 | xargs jq  .[].videoPodcastId | sort -n | uniq > only-news.txt
 
