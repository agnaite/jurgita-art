# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# run $ rake db:seed to populate seed data

id = 0
date = Time.new.strftime("%Y-%m-%d %H:%M:%S")

category_list = ["Nature", "Portraits", "Abstract", "Category4", "Category5"]

# Create 5 categories with 1 painting each
category_list.each do |name|
  Category.create( 
    id: id + 1, 
    name: name, 
    created_at: date, 
    updated_at: date 
  )

  Painting.create(
    id: id + 1,
    title: "Painting#{id}",
    size: "5x7",
    medium: "Oil",
    price: "1000",
    new: false,
    sold: false,
    created_at: date, 
    updated_at: date,
    category_id: id + 1
  )  

  id += 1

end

# Create 10 additional paintings for Nature
10.times do 
  Painting.create(
    id: id + 1,
    title: "Painting#{id}",
    size: "8x10",
    medium: "Mixed",
    price: "100",
    new: true,
    sold: true,
    created_at: date, 
    updated_at: date,
    category_id: 1 
  )

  id += 1
end