class User < ApplicationRecord
  #フォームが空白かを判断
  validates :name, presence: true
  validates :email, presence: true
end
