class Character < ApplicationRecord
    validates :name, :body, presence: true
end
