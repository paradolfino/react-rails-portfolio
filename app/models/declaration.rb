class Declaration < ApplicationRecord
    has_many :entries
    validates :content, presence: true
end
