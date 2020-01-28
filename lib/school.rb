# code here!
class School
    attr_accessor :roster, :name
    
    def initialize(school)
        @school = school
        @roster = {}
    end


    def add_student(name, grade)
        if !(self.roster.has_key? grade)
            self.roster[grade] = []
        end   
        self.roster[grade] << name
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |grade, array|
            array.sort!
        end
    
    end

end