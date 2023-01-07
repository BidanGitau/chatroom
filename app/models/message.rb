class Message < ApplicationRecord
    validates :body, presence: true
    belongs_to :user 
    scope :custom_display, -> { order(created_at: :desc).last(5)}
    # Ex:- scope :active, -> {where(:active => true)} 
end
