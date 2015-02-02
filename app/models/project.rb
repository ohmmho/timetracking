class Project < ActiveRecord::Base

  def self.iron_find(n)
    where("name = ?", n)

  end
end
