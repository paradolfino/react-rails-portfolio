class Project < ApplicationRecord
    has_and_belongs_to_many :technologies
    validates :title, presence: true, length: { minimum: 1 }
    validates :desc, presence: true, length: { minimum: 1 }
end
