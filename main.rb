require 'twitter'
require './client'

# max_id = $client.home_timeline.first.id

$client.user_timeline("flower_staff", {count: 200}).each do |timeline|
  txt = timeline.text
#   timeline.media.each do |m|
#     puts m.media_url
#   end
  if txt.include?("花騎士紹介")
    puts $client.status(timeline.id, tweet_mode: "extended").attrs
  end
end
