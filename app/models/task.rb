class Task < ApplicationRecord
  validates :task_name, presence: true
  validates :task_details, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates :priority, presence: true
  validates :author, presence: true
end
