require_relative "Employee"

class Manager < Employee

    def initialize (name, title, salary, boss)
        super(name, title, salary, boss = nil)
        @employees = []
    end

    def manager_bonus(multiplier)

        amount = 0

        @employees.each do |employee|
            amount += employee.salary
        end

        amount * multiplier
    end

end