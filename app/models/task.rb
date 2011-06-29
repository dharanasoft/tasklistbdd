class Task < ActiveRecord::Base
  belongs_to :bucket
  scope :pending, where(["done=? or done isnull",false])
  scope :done, where(:done=>true)
end
