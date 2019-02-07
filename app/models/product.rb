class Product < ApplicationRecord
  has_many :orders
  has_many :comments, dependent: :delete_all # This is because a destroy error

  validates :name, presence: true
  validates :colour, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }

  def self.search(search_term)
    if Rails.env.development?
      Product.where('name LIKE ?', "%#{search_term}%")
    else
      Product.where('name ilike ?', "%#{search_term}%")
    end
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def views
    $redis.get("product:#{id}")
   end

  def viewed!
    $redis.incr("product:#{id}")
 end
end
