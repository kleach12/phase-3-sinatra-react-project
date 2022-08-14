class Job < ActiveRecord::Base
  belongs_to :user 
  belongs_to :category 
  after_validation :add_cat_id

  def add_cat_id
    if self.cat == 'MANGA'
      self.cat_id = 1
    elsif self.cat == 'Startup'
      self.cat_id = 2
    elsif self.cat == 'FinTech'
      self.cat_id = 3
    elsif self.cat == 'MidSize' 
      self.cat_id = 4
    else self.cat == 'BioTech'
      self.cat_id = 5
    end
  end

end