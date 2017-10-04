require 'pry'

class School
  attr_reader :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end
end
