User.create(encrypted_password: "root", email: "rocked_26@hotmail.com")

5.times do |i|
  Product.create(name: "Product ##{i}", description: "A product.", internalCode: i, category_id: 1)
end

puts 'creación de productos finalizada'

Product.create(name: 'heladera', description: 'con freezer', internalCode: 123, praice: 800, cost: 400, active: true)
