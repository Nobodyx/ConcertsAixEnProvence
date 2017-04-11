class Concert < ApplicationRecord
    validates :artiste, presence: true
    validates :salle, presence: true
    validates :date, presence: true
    
    validates :photo, presence: true
    has_attachment :photo, accept: [:jpg, :png, :jpeg]
end