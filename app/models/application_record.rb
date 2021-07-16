class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  connect_to database: {
    writing: :primary,
    reading: :primary_replica
  }
end
