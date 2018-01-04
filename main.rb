require 'twitter'
require './client'

# max_id = $client.home_timeline.first.id

$client.user_timeline("flower_staff", {count: 200}).each do |timeline|
  txt = timeline.text
  if txt.include?("花騎士紹介")
    puts txt
    m = $client.status(timeline.id, tweet_mode: "extended").attrs[:extended_entities][:media]
    m.each do |mm|
      puts mm[:media_url]
    end
    puts ""
  end
end
