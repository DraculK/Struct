class Album < ApplicationRecord
    validates :name, presence: true
    validates :artist, presence: true
end
