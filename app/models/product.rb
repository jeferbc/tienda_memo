# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  reference          :string
#  precio             :decimal(, )
#  quantity           :integer
#  brand              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  category_id        :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ApplicationRecord
  #associations
  belongs_to :category
  has_many :purchases, dependent: :destroy
  #paperclip
  has_attached_file :image, styles: { microthumb: "50x50>", thumb: "242x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  #Validates
  validates :name, :reference, :precio, :quantity, :brand, :category_id, :image, presence: true
  validates :precio, numericality: true
  validates :quantity, numericality: { only_integer: true }
  validates :precio, :quantity, numericality: { greater_or_equal_to: 0 }

  def available?
    self.quantity > 0 ? true : false
  end
  def update_stock
    self.quantity -= 1
    self.save
  end
end
