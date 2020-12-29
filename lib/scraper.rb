require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html) 
heading_text = doc.css('.headline-26OIBN').text
courses = doc.css('.title-oE5vT4').slice(0,4)

puts "\n----HOMEPAGE HEADING----\n #{heading_text}"
puts "\n----AVAILABLE COURSES----"
courses.each {|course| puts course.text}
# binding.pry