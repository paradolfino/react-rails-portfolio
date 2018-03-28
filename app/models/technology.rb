class Technology < ApplicationRecord
    has_and_belongs_to_many :projects
    extend FriendlyId
    friendly_id :name, use: :slugged
    validates :name, presence: true, length: { minimum: 1 }
end
