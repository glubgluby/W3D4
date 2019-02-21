class Response < ApplicationRecord
    validates :user_id, :answer_choice_id, presence: true 
    validate :respondent_already_answered

    def sibling_responses    
        question.responses.where.not(responses:{ id: self.id})
    end

    def respondent_already_answered?
       errors[:base] << 'You already answered!' if self.sibling_responses.exists?(user_id: self.user_id)
    end 
    
    belongs_to :responder, 
    class_name: :User, 
    primary_key: :id, 
    foreign_key: :user_id
    
    belongs_to :answer_choice, 
    class_name: :AnswerChoice, 
    primary_key: :id, 
    foreign_key: :answer_choice_id
    
    has_one :question,
        through: :answer_choice,
        source: :question

    
end 