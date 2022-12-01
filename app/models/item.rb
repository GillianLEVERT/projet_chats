class Item < ApplicationRecord

    has_many :join_table_user_to_carts
    has_many :carts, through: :join_table_user_to_carts
    
    has_many :orders

    validates :title, presence: true, length: {in: 3..100, message: "Title lenght must be between 3 and 100" }
    validates :description, presence: true, length: {in: 10..500, message: "Description lenght must be between 10 and 500" }
    validates :price, presence: true, numericality: {greater_than: 0, message: "Price must be positive"}
    validates :image_url, presence: true
end
