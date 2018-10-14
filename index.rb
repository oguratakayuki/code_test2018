
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'
require 'active_record'
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(ENV["RACK_ENV"].to_sym)
 

 
get '/show' do
  article = {
      id: 1,
      title: "today's dialy",
      content: "It's a sunny day."
  }
 
  article.to_json
end



post '/recipes' do
  puts 'POST /recipes -> レシピを作成'
end

get '/recipes' do
  puts 'GET /recipes -> 全レシピ一覧を返す'
  article = {
      id: 1,
      title: "today's dialy",
      content: "It's a sunny day."
  }
   article.to_json
end

get '/recipes/:id' do
  puts 'GET /recipes/{id} -> 指定レシピ一つを返す'
end

patch '/recipes/:id' do
  puts 'ATCH /recipes/{id} -> 指定レシピを更新'
end

delete '/recipes/:id' do
  puts 'DELETE /recipes/{id} -> 指定レシピの削除'
end

