class ApplicationForm
  include ActiveModel::Model
  include ActiveModel::ForbiddenAttributesProtection

  def initialize(attributes = {})
    sanitize_for_mass_assignment(attributes)
    super
  end

  def save
    if valid?
      persist!

      true
    else
      false
    end
  end
end
