class Note < ApplicationRecord
  belongs_to :patient
  validates :title, 
            presence:true, 
            length: { minimum: 5 }
  validates :body, 
            presence:true
end
