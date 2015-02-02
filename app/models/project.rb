class Project < ActiveRecord::Base

  def self.iron_find(n)
    where("name = ?", n)
  end

  def self.clean_old
    where("created_at < ?", 7.day.ago).destroy_all
  end

  def self.last_created_projects(n)
    limit(n).order('created_at desc')
  end

  

end
