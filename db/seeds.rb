require 'open-uri'
require 'nokogiri'
require 'json'

# CREATING INGREDIENT JSON
# url_base = "http://www.lesfruitsetlegumesfrais.com"
# url = "#{url_base}/fruits-legumes/liste?fp1=&fp2="
# filepath = "ingredients.json"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# i = 0

# ingredients = { ingredients: []}

# html_doc.search('.item a').each do |item|
#   item_link = item.attribute('href')
#   item_url = "#{url_base}#{item_link}"

#   item_html_file = open(item_url).read
#   item_html_doc = Nokogiri::HTML(item_html_file)

#   ingredient_hash = {}
#   ingredient_hash[:name] = item_html_doc.search(".h1-like").text
#   photo_url_ext = item_html_doc.search(".header-product a img").attribute('src').value
#   ingredient_hash[:photo_url] = "#{url_base}/#{photo_url_ext}"

#   months_weight = []
#   calendar = item_html_doc.search('.bar-calendar dd img').each do |month|
#     if month.attribute('src').value == "images/common/bar-P.gif"
#       months_weight << 100
#     elsif month.attribute('src').value == "images/common/bar-D.gif"
#       months_weight << 50
#     else
#       months_weight << 0
#     end
#   end

#   ingredient_hash[:february]  = months_weight[0]
#   ingredient_hash[:march]     = months_weight[1]
#   ingredient_hash[:april]     = months_weight[2]
#   ingredient_hash[:may]       = months_weight[3]
#   ingredient_hash[:june]      = months_weight[4]
#   ingredient_hash[:july]      = months_weight[5]
#   ingredient_hash[:august]    = months_weight[6]
#   ingredient_hash[:september] = months_weight[7]
#   ingredient_hash[:october]   = months_weight[8]
#   ingredient_hash[:november]  = months_weight[9]
#   ingredient_hash[:december]  = months_weight[10]
#   ingredient_hash[:january]   = months_weight[11]
#   ingredients[:ingredients] << ingredient_hash
#   p ingredients
#   p i+=1
# end

# File.open(filepath, 'wb') do |file|
#   file.write(JSON.generate(ingredients))
# end
