class Patient < ApplicationRecord
    #Patient validation rules
    has_many :notes, dependent: :destroy
    validates :first_Name, 
                presence: true,
                length: { minimum: 2}
    validates :last_Name, 
                presence: true,
                length: { minimum: 2}
end
