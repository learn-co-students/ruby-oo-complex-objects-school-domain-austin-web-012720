# code here!
require "pry"
class School
attr_accessor :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)

    if self.roster[grade].nil?
      roster[grade] = []
      roster[grade] << name
    elsif !roster[grade].nil?
      roster[grade] << name
    end

  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each_key {|v| roster[v].sort!}
  end


end
