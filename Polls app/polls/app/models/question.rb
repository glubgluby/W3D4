class Question < ApplicationRecord
    validates :poll_id, presence: true

    belongs_to :poll,
        class_name: :Poll,
        primary_key: :id,
        foreign_key: :poll_id
    
    has_many :choices,
        class_name: :AnswerChoice,
        primary_key: :id,
        foreign_key: :question_id
    
    has_many :responses, 
        through: :choices, 
        source: :responses
end