class Song < ApplicationRecord

    validates :title, presence: true, uniqueness: { scope: :release_year, message: "Artist cannot repeat a title in the same year" }
    validates :released, inclusion: { in: [true, false] }
    validates :release_year, presence: true, if: :released?, numericality: { less_than_or_equal_to: Date.current.year }
    validates :artist_name, presence: true
    
end
