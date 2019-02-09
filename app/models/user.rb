class User < ApplicationRecord
  #フォームが空白かを判断
  #validationの途中　パスワードとメールアドレス
  validates :name, presence: true#/^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}$/i
  validates :email, presence: true, length: { minimum: 8, maximum: 32}

#パスワード機能の実装
  has_secure_password
end
