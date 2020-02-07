class Currency < ApplicationRecord
    has_many :watchitems
    has_many :users , through: :watchitems
    # has_many :portfolios
    # has_many :users , through: :portfolios
end
 