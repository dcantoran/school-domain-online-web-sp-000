require "pry"

class School 
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student_name, grade)
  
    if @roster.has_key?(grade)
     @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name  
    end 
  end 
  
  def grade(grade)
    @roster[grade].collect do |student_array|
      student_array
    end 
  end 
  
  def sort
    new_roster_h = {}
    
    @roster.each do |grade, student_arr|
      new_roster_h[grade] = student_arr.sort
    end
    new_roster_h
  end 
  
end 