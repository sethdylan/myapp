class Order < ApplicationRecord
  belongs_to :product
end

class Product < ApplicationRecord
  has_many :orders
end

class Order < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
end