class Order < ApplicationRecord
  belongs_to :customer 
  
  validates :product_name, presence: true
  validates :product_count, presence: true
  #validates :customer, presence: true
  validates_associated :customer
  validates :customer_id, presence: true
  validates :product_count, numericality: { only_integer: true }
  
end
