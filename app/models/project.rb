class Project < ApplicationRecord
  # Custom scopes
  # Add defaults
  # Integrate validations
  # Integrate callbacks
  # Integrating database relationships
  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :still_needs_some_work, -> { where('percent_complete < 75.0') }
end
