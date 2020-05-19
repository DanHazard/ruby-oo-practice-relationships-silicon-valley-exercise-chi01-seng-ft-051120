require 'pry'

class Startup

  attr_writer :domain, :name
  attr_reader :name, :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def pivot(new_domain, new_name)
    # How to make this the only way to change the name???
    self.domain = new_domain
    self.name = new_name
  end

  def sign_contract(venture_capitalist, investment_type, amount_invested)
    #if it's negative do something??? meh
    FundingRound.new(self, venture_capitalist, investment_type, amount_invested)
  end

  def num_funding_rounds
    num_rounds = FundingRound.all.select do |funding_instance|
      #binding.pry
      funding_instance.startup.name == self.name
    end
    num_rounds.count
  end

  def total_funds
    s_funds = FundingRound.all.select do |funding_instance|
      # binding.pry
      funding_instance.startup.name == self.name
      # binding.pry
    end
    # binding.pry
    t_funds = 0
    s_funds.select do |funding_instance|
      t_funds += funding_instance.investment
      # binding.pry
    end
    t_funds
  end

  def investors

    investor_arr = startup_info
    uniq_investors = investor_arr.map do |funding_instance|
      funding_instance.venture_capitalist
    end
    uniq_investors.uniq
    # binding.pry
  end

  def startup_info
    #grab info about the startups investments
    FundingRound.all.select do |funding_instance|
      funding_instance.startup.name == self.name
    end
  end

  def big_investors
    investment_arr = startup_info
    big_investors_arr = investment_arr.select do |funding_instance|
      funding_instance.venture_capitalist.total_worth.to_s.length > 9
      # binding.pry
    end
    uniq_big_invs = big_investors_arr.map do |funding_instance|
      funding_instance.venture_capitalist
    end
    uniq_big_invs.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    #find the FIRST startup whose founder's name matches the name passed
    self.all.find do |startup_instance|
      # binding.pry
      startup_instance.founder == founder_name
    end
  end

  def self.domains

    self.all.map do |startup_instance|
      startup_instance.domain
    end
  end




end
