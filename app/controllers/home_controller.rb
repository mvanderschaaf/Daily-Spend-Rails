class HomeController < ApplicationController

  def dailycost
    @billCosts = Bill.all.map { |x| ((x.frequency.times_per_year * x.amount)/365.0) }
    @goalCosts = Goal.all.select { |x| x.target_date > Date.today }.map { |x| ((x.amount-x.saved-0.0)/(x.target_date-Date.today)) }
    @totalCost = @billCosts.sum + @goalCosts.sum
  end

end
