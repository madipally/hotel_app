class Hotel < ApplicationRecord
    validates :name, presence: true
    has_many :rooms
end
