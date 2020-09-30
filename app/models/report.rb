class Report < ApplicationRecord
  geocoded_by :address 
  after_validation :geocode 

  has_one_attached :image 
  has_one_attached :video 

  

  def thumbnail 
    return self.image.variant(resize: "85x85!")
  end

  def medium
    return self.image.variant(resize: "300x300!") 
  end

  def address 
    [street, city].compact.join(',')
  end
end
