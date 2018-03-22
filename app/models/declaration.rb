class Declaration < ApplicationRecord
    has_many :entries
    validates :content, presence: true, length: { minimum: 1 }
end
