require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @compare = params.fetch('compare')
  @results = params.fetch('word').anagrams(@compare)
  erb(:results)
end
