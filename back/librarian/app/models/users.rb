class Users < ApplicationRecord
  validates :name, {uniqueness: true, presence: true}
  validates :email, {uniqueness: true, presence: true}
  validates :password, {presence: true}
end
