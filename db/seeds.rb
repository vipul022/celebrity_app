# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "adding celebrities"
# celebrities = [
#   {
#     name: "salman khan",
#     notability: "maine pyar kiya"
#   },
#   {
#    name: "akshay kumar",
#    notability: "holiday" 
#   }
# ]
# celebrities.each do |celebrity|
#     Celebrity.create(celebrity)
  
# end
Celebrity.destroy_all
5.times do
  Celebrity.create(
    name: Faker::Name.name, 
    notability: Faker::Job.title, 
    profile_picture: "https://picsum.photos/200/300"
  )
end

puts "all done"