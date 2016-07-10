class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_one :career

  accepts_nested_attributes_for :profile,reject_if: :all_blank, allow_destroy: true
  ########## CALLBACKS

  ########## METHODS
  def get_name
    name = ''
    if self.profile.present? && self.profile.name.present?
      name = self.profile.name
    else
      name = self.email.split('@')[0]
    end
    return name
  end
end
