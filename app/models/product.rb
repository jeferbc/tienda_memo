# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  reference   :string
#  precio      :decimal(, )
#  quantity    :integer
#  brand       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
end
