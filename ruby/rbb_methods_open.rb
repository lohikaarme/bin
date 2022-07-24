require 'open-uri'

url = "http://ruby.bastardsbook.com/files/tweet-fetcher/tweets-data/USAGov-tweets-page-3.xml"

remote_page = URI.open(url)
local_file = File.open("tweets-on-hard-drive.xml", "w")

tweets = remote_page.read

local_file.write(tweets)

local_file.close