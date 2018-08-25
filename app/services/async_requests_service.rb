require 'rss'
require 'open-uri'
class AsyncRequestsService
  def nokogiri_parser
    Feed.all.each do |feed|
      doc= Nokogiri::XML(open(feed.url.strip))
      # update feed title
      feed.update(title: doc.at('title').text,
                  description: doc.at('description').text)
      # create/update entries for feed
      doc.css('item').each do |data|
        title = data.at("title").text
        link = data.at("link").text
        pubDate = data.at("pubDate").text
        content = data.at("description").text
        local_entry = feed.entries.find_or_create_by(title: title)
        local_entry.update_attributes(content: content, url: link, published_at: pubDate)
        puts "\n\ntitle: #{ title } \nlink: #{ link } \npublished_at: #{pubDate}"
      end
    end
  end
end