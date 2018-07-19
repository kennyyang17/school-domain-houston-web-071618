# code here!
require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sortedHash = {}
    roster.each do |grade, students|
      sortedHash[grade] = students.sort
    end
    sortedHash
  end
  end
