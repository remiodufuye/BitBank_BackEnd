class User < ApplicationRecord
    has_many :watchitems
    has_many :currencies , through: :watchitems
    has_many :portfolios 
    has_many :currencies , through: :portfolios
    has_secure_password
    validates :username , uniqueness: { case_sensitive: false }
end
