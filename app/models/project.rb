class Project < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
  

  has_many :entries

  def self.iron_find(n)
    where("name = ?", n)
  end

  def self.clean_old
    where("created_at < ?", 7.day.ago).destroy_all
  end

  def self.last_created_projects(n)
    limit(n).order('created_at desc')
  end

  def get_entries_month(month, year)
    from =  Date.new(year, month, 1)
    to = Date.new(year, month, -1)
    entries.where(created_at: from..to)
  end

  def calculate_hours_month(month, year)
    sum = 0 
    get_entries_month(month,year).each do |entry|
      sum += entry.minutes
      sum += (entry.hours * 60)
    end
    hours = sum / 60
    minutes = sum % 60
    "Hours: #{hours}, mins: #{minutes}"
  end
  
end
