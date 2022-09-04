class Job < ActiveRecord::Base
  belongs_to :user 
  belongs_to :category 
  # after_validation :add_cat_id

  # def add_cat_id
  #   if self.cat == 'MANGA'
  #     self.category_id = 1
  #   elsif self.cat == 'Startup'
  #     self.category_id = 2
  #   elsif self.cat == 'FinTech'
  #     self.category_id = 3
  #   elsif self.cat == 'MidSize' 
  #     self.category_id = 4
  #   else self.cat == 'BioTech'
  #     self.category_id = 5
  #   end
  # end

end