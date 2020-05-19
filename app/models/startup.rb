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
    #returns an array of all the domains
    #I tried this another way and it did not work as expected
    domain_arr = []
    self.all.select do |startup_instance|
      domain_arr << startup_instance.domain
    end
    domain_arr
  end


end
