#!/usr/bin/ruby

require "itunes-search-api"
require "json"
require "open-uri"
require "Nokogiri"

# Retrieve iTunes Store search results in XML
iTunesStoreSeachResults = ITunesSearchAPI.search(:country => "CN", :term => "天天酷跑", :entity => "software")

@url=Array.new

# Iterate results from returned items. 
# Set @url for Nokogiri to open if XML key is trackViewUrl 
iTunesStoreSeachResults.each { |result| 
	result.each { |key, value| @url.push value.to_s  if key == "trackViewUrl"} 				
	}

@url.take(3).each { |i|
	# Open returned result page with Nokogiri			
	@appPage = Nokogiri::HTML(open(i))
	html = @appPage.xpath('//*[@id="content"]/div/div[2]/div[2]')

	@resultlist = Array.new

	# Isolate links in html file and construct hash
	links = html.css('a')
	links.each { |i|
		
		result = {}
		result[:link]="unknown"
		result[:desc]="unknown"
		
		result[:link]=i['href'] 
	 	result[:desc]=i.inner_text
		@resultlist.push result
		}

	@resultlist.each { |i| print i[:desc] + " - " + i[:link] + "\n"}
	}