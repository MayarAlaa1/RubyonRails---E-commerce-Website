class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_and_belongs_to_many :orders
  # has_one_attached :image
  has_many_attached :image

  belongs_to :store
  belongs_to :user

  def self.search(search)
    if search
        where(['title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"])
    else
        all
    end
  end

end
