class House < ApplicationRecord
  belongs_to :Realtor, :optional => true
  def self.filtered_by_price(opts = {})
    min = opts[:min]
    max = opts[:max]
    house = House.arel_table

    if min && max
      self.where(:price => min..max)
    elsif min && !max
      self.where(house[:price].gt(min))
    elsif max && !min
      self.where(house[:price].lt(max))
    else
      self.all
    end
  end

  def self.filtered_by_sqf(opts = {})
    min = opts[:min]
    max = opts[:max]
    house = House.arel_table

    if min && max
      self.where(:sqf => min..max)
    elsif min && !max
      self.where(house[:sqf].gt(min))
    elsif max && !min
      self.where(house[:sqf].lt(max))
    else
      self.all
    end
  end
end
