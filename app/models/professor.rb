class Professor < ApplicationRecord
  has_many :hogwarts_classes, :foreign_key => "professor_id"

  #https://gist.github.com/randyleighton/fbc20356d12fac68e4f3
  def full_name
    "#{first_name} #{last_name}"
  end
end
