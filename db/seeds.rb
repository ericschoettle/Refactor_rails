class Seed

  def self.begin
    Product.destroy_all
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    30.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100),
                      description: Faker::Lorem.sentence(5, false, 0).chop,
                      details: Faker::Lorem.paragraph(3))
    end
  end
end

Seed.begin
