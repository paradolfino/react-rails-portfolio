class Entry < ApplicationRecord
    belongs_to :declaration
    validates :content, presence: true, length: { minimum: 1 }
end
