class Entry < ActiveRecord::Base
  belongs_to :project

  validates_associated :project
  validates_presence_of :datetime, :hours, :minutes
  validates :hours, numericality: true
  validates :minutes, numericality: true

  # def 
  # end

end
