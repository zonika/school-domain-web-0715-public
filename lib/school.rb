# Write code here
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name=name
    @roster={}
  end

  def first_student(grade)
    @roster[grade]
  end
  def add_student(name,grade)
    if first_student(grade) != nil
      @roster[grade]<<name
    else
      @roster[grade]=[name]
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end