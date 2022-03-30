class Project < ApplicationRecord
  # Add default column values
  after_initialize :set_defaults

  # Custom scoping
  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :still_needs_some_work, -> { where('percent_complete < 75.0') }

  def set_defaults
    self.percent_complete ||= 0.0 # if value is nil set to 0 else don't do anything
  end

end
