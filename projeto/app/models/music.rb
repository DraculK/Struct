class Music < ApplicationRecord
    validates :name, presence: true
    validates :explicit, presence: true
    validates :genre, presence: true
end
