class Artiste < ApplicationRecord
    has_many :concerts
    
    validates :pseudo, presence: true
    validates :age, presence: true
    
    validates :photo, presence: true
    has_attachment :photo, accept: [:jpg, :png, :jpeg]
end
