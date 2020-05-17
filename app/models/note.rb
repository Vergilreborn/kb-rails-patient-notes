class Note < ApplicationRecord
  default_scope { order(created_at: :desc)}
  belongs_to :patient
  validates :title, 
            presence:true, 
            length: { minimum: 5 }
  validates :body, 
            presence:true
end
