class PatientDiagnostic < ApplicationRecord
  include PatientDiagnosticsAdmin
  belongs_to :patient
  belongs_to :disease
end
