class MissingPerson < ApplicationRecord
  geocoded_by :address 
  after_validation :geocode 

  has_one_attached :image 
  
  def thumbnail 
    return self.image.variant(resize: "85x85!")
  end

  def address 
    [street, city].compact.join(',') 
  end
end
