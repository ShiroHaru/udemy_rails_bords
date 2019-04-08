# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

class User < ApplicationRecord
  has_secure_password

  validates :name,
            presence: true,
            uniquness: true,
            length: {maximum: 16},
            format: {
                with: /\A[a-z0-9]\Z/,
                message: 'は小文字英数字で入力してください'
            }
  validates :password,
            lenght: {minimum: 8}
end