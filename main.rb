require 'twitter'
require './client'

# max_id = $client.home_timeline.first.id

tweets = $client.user_timeline("flower_staff", {count: 200})
img = tweets.flat_map {|s| s.media}.map {|m| m.media_url.to_s}

$client.user_timeline("flower_staff", {count: 200}).each do |timeline|
  txt = $client.status(timeline.id).text
  if txt.include?("花騎士紹介")
    p $client.status(timeline.id).media
#     puts txt
  end
end
