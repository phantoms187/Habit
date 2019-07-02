class Activity < ApplicationRecord
  before_save :default_save
  belongs_to :user
  
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  
  def default_save
    self.teeth = 0 if self.teeth.nil? 
    self.mia = 0 if self.mia.nil? 
    self.run = 0 if self.run.nil? 
    self.keyboard = 0 if self.keyboard.nil? 
    self.pull = 0 if self.pull.nil? 
    self.floor = 0 if self.floor.nil? 
    self.bell = 0 if self.bell.nil? 
  end
  
  
end
