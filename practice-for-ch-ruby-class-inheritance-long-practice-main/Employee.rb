require "byebug"

class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize (name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employee_bonus = 0
        if boss != nil
            @boss.employees << self
        end
    end

    def employee_bonus(multiplier)
        @employee_bonus = self.salary * multiplier
    end
end



# Ned = Manager.new('ned','founder', 1000000, nil)
# Darren = Manager.new('darren', 'ta manager', 78000, Ned)
# Shawna = Employee.new('shawna', 'ta', 12000 ,Darren)
# David = Employee.new('david', 'ta', 10000, Darren)