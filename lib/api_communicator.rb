require 'net/http'
# require 'uri'
require 'json'

def api
  uri = URI.parse("https://zodiacal.herokuapp.com/api")
  http = Net::HTTP.new(uri.host, uri.port)
  # http.use_ssl = true
  request = Net::HTTP::Post.new(uri.request_uri, header)
  request.body = user.to_json
  response = http.request(request)
end

# def get_articles_from_api_by_keyword(keyword)
#   uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
#   http = Net::HTTP.new(uri.host, uri.port)
#   http.use_ssl = true
#   uri.query = URI.encode_www_form({
#     "api-key" => "#{ENV['API_KEY']}",
#     "fl" => "web_url, headline, snippet, pub_date, _id",
#     "q" => keyword
#   })
#   request = Net::HTTP::Get.new(uri.request_uri)
#   @result = JSON.parse(http.request(request).body)
# end
#
# def get_articles_from_api_by_date(date)
#   uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
#   http = Net::HTTP.new(uri.host, uri.port)
#   http.use_ssl = true
#   uri.query = URI.encode_www_form({
#     "api-key" => "#{ENV['API_KEY']}",
#     "fl" => "web_url, headline, snippet, pub_date, _id",
#     "begin_date" => date,
#     "end_date" => date
#   })
#   request = Net::HTTP::Get.new(uri.request_uri)
#   @result = JSON.parse(http.request(request).body)
# end
#
# def search_for_article(query)
#   if query.to_i == 0
#     get_articles_from_api_by_keyword(query)
#   elsif query.to_i.class == Fixnum
#     get_articles_from_api_by_date(query)
#   else
#     puts "Invalid search query"
#   end
# end
#
# def get_articles_array(search_results)
#   search_results["response"]["docs"]
# end
#
# def print_articles(articles_array)
#   system "clear"
#   articles_array.each do |article|
#     title = article["headline"]["main"]
#     pub_date = article["pub_date"].to_s[0..9]
#     url = article["web_url"]
#     article_id = article["_id"]
#
#     puts "Title: #{title}"
#     puts "Publication Date: #{pub_date}"
#     puts "URL: #{url}"
#     puts "Article ID: #{article_id}"
#     puts "*" * 50
#     sleep(0.5)
#   end
# end
#
# def create_article_instance(articles_array, article_id)
#   found_article = articles_array.find do |article|
#     article["_id"] == article_id
#   end
#   sleep(1)
#   puts "Saving article into your collection..."
#   sleep(1)
#   Article.find_or_create_by(title: "#{found_article["headline"]["main"]}", pub_date: "#{found_article["pub_date"].to_s[0..9]}", url: "#{found_article["web_url"]}", article_id: "#{found_article["_id"]}")
# end
