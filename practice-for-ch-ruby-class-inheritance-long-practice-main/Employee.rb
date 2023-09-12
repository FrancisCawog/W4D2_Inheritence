class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize (name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employee_bonus = 0
    end

    def employee_bonus(multiplier)
        @employee_bonus = self.salary * multiplier
        
    end

end