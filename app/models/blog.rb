class Blog < ActiveRecord::Base

  validates :tite, presence: true
  validates :body, presence: true 


end
