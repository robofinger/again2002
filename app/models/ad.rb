class Ad < ActiveRecord::Base
   attr_accessible :description
   
   belongs_to :user
   
   validates :description, :presence => true, :length => { :maximum => 140 }
   validates :user_id, :presence => true
   
   default_scope :order => 'ads.created_at DESC'   
end
