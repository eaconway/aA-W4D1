# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.create(
  {artist_id:4, title:'flower'},
  {artist_id:5, title:'frost_flame'},
  {artist_id:4,title:'butterfly'}
)

ArtworkShare.create(
  {artwork_id:1,viewer_id:5},
  {artwork_id:2,viewer_id:4},
  {artwork_id:3,viewer_id:4}
)
