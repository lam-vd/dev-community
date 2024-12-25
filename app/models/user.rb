class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  def name
    "#{first_name} #{last_name}".strip
  end

  def address
    return if city.blank? || state.blank? || country.blank? || pincode.blank?
    "#{city}, #{state}, #{country}, #{pincode}"
  end

  def self.ransackable_attributes(auth_object = nil)
    ['country', 'city']
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

end
