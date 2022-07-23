require "open-uri"
def fetch_page(url)
    return URI.open(url).read
end

def count_image_tags(page, tag)
    pattern = /<#{tag}\b/   
    tags = page.scan(pattern)
    return tags.length
end

sites = [ "http://www.wsj.com", "http://www.nytimes.com", "http://www.ft.com" ]
tags = ["div","h1","h2","h3","img","p"]   

sites.each do |url|
    puts "#{url}"
    tags.each do |tag|
        page = fetch_page(url)
        tag_count = count_image_tags(page, tag)
        puts "\t - #{tag_count} <#{tag}> tags"
    end
end