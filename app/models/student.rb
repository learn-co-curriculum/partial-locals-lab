class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(query)
    if query.present?
      where("name LIKE ?", "%#{query}%")
    else
      all
    end
  end
end
