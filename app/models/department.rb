class Department < ApplicationRecord
  has_many :items, foreign_key: 'department_id'
  
end