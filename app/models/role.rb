class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  ROLES = %w(admin member)

  ## Fields
  field     :name,      type: String

  ## Validations
  validates :name,      presence: true, uniqueness: true, inclusion: ROLES

  ## Class methods
  def self.roles
    ROLES
  end


  ## Instance methods
  ROLES.each do |role|
    define_method("#{role}?") do
      name == role
    end
  end
end