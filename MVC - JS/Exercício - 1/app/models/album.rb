class Album < ApplicationRecord
    has_many :musics, dependent: :destroy
end
