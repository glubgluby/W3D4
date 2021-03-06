class User < ApplicationRecord
    validates :user_name, presence: true, uniqueness: true


    has_many :polls,
        class_name: :Poll,
        primary_key: :id,
        foreign_key: :author_id

    has_many :responses,
        class_name: :Response,
        primary_key: :id,
        foreign_key: :user_id

end