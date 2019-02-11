require 'sinatra/json'

get '/origin_name' do
  client = RumbleClient.new
  origin_names = []
  client.origin_names do |row|
    origin_names << {name: row[:name], hash: row[:hash]}
  end

  json(origin_names)
end

not_found do
  json({:status => "404"})
end
