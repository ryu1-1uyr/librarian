class Book < ApplicationRecord
  validates :title, {presence: true}
  validates :price, {presence: true, numericality: {only_integer: true ,greater_than: 0}}
#  validates :image, {presence: true}
  validates :pages, {presence: true, numericality: {only_integer: true ,greater_than: 0}}
#  validates :user_id, {presence: true}
end
