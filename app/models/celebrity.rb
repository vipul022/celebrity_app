class Celebrity < ApplicationRecord
    validates :name, :notability, :profile_picture, presence: true
end
    
