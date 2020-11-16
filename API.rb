require 'net/http'
require 'json'


response = Net::HTTP.get_response('api.openweathermap.org', '/data/2.5/weather?q=boston&appid=deeff7249e3a8925976041b093dfa417')

p response.code

p response.body


p response.body.class

puts "\n"

 jsonResponse = JSON.parse(response.body)


p jsonResponse

p jsonResponse.class

p jsonResponse["coord"]

p jsonResponse["coord"]["lon"]

puts JSON.pretty_generate(jsonResponse)


p jsonResponse.length()


# jsonResponse.each do |doc|
#   puts doc["coord"]
# end
