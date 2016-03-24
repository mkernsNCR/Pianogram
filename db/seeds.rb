# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Comment.destroy_all

legend = Video.create!(title: 'Ordinary People', vid_url: "https://www.youtube.com/embed/lZ9F6w3bQWI")

somo = Video.create!(title: 'Ride', vid_url: "https://www.youtube.com/embed/h8JD6gUy3iY")

all = Video.create!(title: 'All of Me', vid_url: "https://www.youtube.com/embed/32MMz3Dbcco")

queen = Video.create!(title: 'Bohemian Rhapsody', vid_url: "https://www.youtube.com/embed/ZBq7gbEf_PI")

queen2 = Video.create!(title: 'Bohemian Rhapsody', vid_url: "https://www.youtube.com/embed/rptV6K7nqu0")

legend.Comment.create!(body: "I love this!")
