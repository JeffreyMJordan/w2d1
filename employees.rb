class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary, boss)
    @name = name
    @salary = salary
    @title = title
    @boss = boss
    boss.add_employee(self) if !boss.nil?
  end

  def bonus(mult)
    @salary*mult
  end
end

class Manager < Employee
  attr_reader :employees
  def initialize(name, title, salary, boss, employees = [])
    super(name, title, salary, boss)
    @employees = employees
  end

  def bonus(mult)
    total = 0
    employees.each do |el|
      total += el.salary
    end
    total * mult
  end

  def add_employee(employee)
    @employees << employee
  end
end
