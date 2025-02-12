# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.create([
  { name: 'Golden Dragon', address: '123 Main St, Chinatown', category: 'chinese', phone_number: '123-456-7890' },
  { name: 'La Trattoria', address: '456 Elm St, Little Italy', category: 'italian', phone_number: '987-654-3210' },
  { name: 'Sushi World', address: '789 Oak St, Downtown', category: 'japanese', phone_number: '555-555-5555' },
  { name: 'Le Petit Bistro', address: '321 Maple St, Paris District', category: 'french', phone_number: '222-333-4444' },
  { name: 'Brasserie Royale', address: '654 Pine St, Belgian Quarter', category: 'belgian', phone_number: '333-444-5555' }
])
