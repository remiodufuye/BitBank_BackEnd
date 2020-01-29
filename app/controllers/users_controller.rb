class UsersController < ApplicationController
    has_many :watchitems
    has_many :currencies , through: :watchitems
    has_many :portfolios 
    has_many :currencies , through: :portfolios
end
