class Point < ActiveRecord::Base
    belongs_to :skill, counter_cache: :points_count
    belongs_to :user
end
