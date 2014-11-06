require 'httparty'
require 'nokogiri'

def ask(question)
	puts question
	gets.chomp
end

if ARGV.empty?
	stock = ask("Which stock would you like to view?")
else
	stock = ARGV[0]	
end

response = HTTParty.get("http://finance.yahoo.com/q?s=#{stock}")
# puts response.body

# puts response.headers['content-type']

dom = Nokogiri::HTML(response.body)

# dom.xpath("//span[@id='yfs_l84_goog']").size

title = dom.xpath("//div[@class='title']").first

puts title.content

scraper = dom.xpath("//span[@id='yfs_l84_#{stock}']").first

puts "$#{scraper.content}"

scraper2 = dom.xpath("//td[@class='yfnc_tabledata1']").first

puts "Yesterday's close: $#{scraper2.content}"

mk_cap = dom.xpath("//span[@id='yfs_j10_#{stock}']").first

puts "Market Cap: #{mk_cap.content}"