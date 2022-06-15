# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ユーザーを３つ作成
# メアドuser001@test.comを基本とし、001部分が002,003と変化する
# パスワード:"test1234"を設定する
# 各ユーザーに紐づいた記事をそれぞれ50個ずつ作成
# タイトル:No.1: user001の記事 を例とする
# 本文:No.1: user001の記事の本文 を例とする
# No.1 の部分はデータ作成順の連番とする


# require 'user'


require "pry"

3.times do |n|
   n += 1
  #  binding.pry
   user = User.find_or_create_by!(email: "user00#{n}@test.com") do |_user|
     _user.password = 'test1234'
   end

  # binding.pry

 50.times do |num|
    num += 1
    user.articles.find_or_create_by!(title: "No.#{num}: user00#{n}の記事") do |article|
     article.content = "No.#{num}: user00#{n}の記事の本文"
   end
  end
end
