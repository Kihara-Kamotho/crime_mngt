class WantedPerson < ApplicationRecord
  has_one_attached :image
  def thumbnail 
    return self.image.variant(resize: "90x90!")
  end 

  def medium
    return self.image.variant(resize: "300x300!")
  end
end
