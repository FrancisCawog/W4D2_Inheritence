require_relative "Employee"

class Manager < Employee
    attr_reader :employees

    def initialize (name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end

    def all_salaries
        amount = 0

        self.employees.each do |employee|
            if employee.is_a?(Manager) 
                amount += employee.all_salaries
                amount += employee.salary
            else   
                amount += employee.salary
            end
        end

       amount
    end

    def manager_bonus(multiplier)
        self.all_salaries * multiplier
    end

end