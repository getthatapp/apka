class Task < ApplicationRecord
  belongs_to :list
  validates :title, presence: true

  def completed?
    !completed.blank?
  end
end