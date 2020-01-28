class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !(self.roster.has_key? grade)
            self.roster[grade] = []
        end
            
        self.roster[grade] << student
    end

    def grade(num)
        self.roster[num]
    end

    def sort
        self.roster.each_key { |x| roster[x].sort! }
    end
end