class ProductInformation < ApplicationRecord
  belongs_to :product_information_item
  belongs_to :product
end
