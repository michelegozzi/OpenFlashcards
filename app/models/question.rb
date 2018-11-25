class Question < ApplicationRecord
  validates :text,      presence: true,
                        length: { maximum: 500 }
                        
  has_many :answers
  belongs_to :topic
end
