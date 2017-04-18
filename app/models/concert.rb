class Concert < ApplicationRecord
    belongs_to :artiste
    
    validates :salle, presence: true
    validates :date, presence: true
    
    validates :photo, presence: true
    has_attachment :photo, accept: [:jpg, :png, :jpeg]
end