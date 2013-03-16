class Trip < ActiveRecord::Base
  attr_accessible :name, :tag_line, :start_date, :end_date, :location,
                  :activity, :image_name, :description, :price
end