class Item < ApplicationRecord
    has_many :reviews
    validates :name, uniqueness: true

    def self.size_s
        Item.where(size: "S")
    end

    def self.size_m
        Item.where(size:"M")
    end

    def self.size_l
        Item.where(size:"L")
    end

    def self.size_xl
        Item.where(size:"XL")
    end


end
