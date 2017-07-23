# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#%w(alice bob charlie dana).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123', password_confirmation: nil)
end

%w(alice bob dana).each_with_index do |name, i|
  title = "Dear Diary Number #{i}"
  email = "#{name}@#{name}.com"
  user = User.find_by(email: email)
  next if Post.exists? title: title, user_id: user.id
  Post.create!(title: title, body: "Another beautiful day!", user_id: user.id)
end

%w(charlie).each do |name|
  body = "Great post!"
  email = "#{name}@#{name}.com"
  user = User.find_by(email: email)
  post = User.find_by(email: "dana@dana.com").posts.first
  next if Comment.exists? body: body, user_id: user.id
  Comment.create!(body: body, user: user, post_id: post.id)
end
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
