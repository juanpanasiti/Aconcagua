class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ########## METHODS
  def get_name
    name = ''
    #if self.profile.present? && self.profile.name.present?
    #  name = self.name
    #else
      name = self.email.split('@')[0]
    #end
    return name
  end
end
