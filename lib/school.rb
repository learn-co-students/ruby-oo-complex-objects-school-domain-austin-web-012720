# code here!
require "pry"
class School
    attr_accessor :school, :roster

    def initialize (school, roster = {})
        @school = school
        @roster = roster
    end

    def add_student(name, grade)
        (@roster[grade] ||= []) << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students_array|
            students_array.sort!
        end
    end

end
