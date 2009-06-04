class UsersSeedData < ActiveRecord::Migration
  def self.up
    # sample data from the php example
    seed = [{ 'id' => 1, 'first' => "Fred", 'last' => 'Flintstone', 'email' => 'fred@flintstone.com' },
            { 'id' => 2, 'first' => "Wilma", 'last' => 'Flintstone', 'email' => 'wilma@flintstone.com' },
            { 'id' => 3, 'first' => "Pebbles", 'last' => 'Flintstone', 'email' => 'pebbles@flintstone.com' },
            { 'id' => 4, 'first' => "Barney", 'last' => 'Rubble', 'email' => 'barney@rubble.com' },
            { 'id' => 5, 'first' => "Betty", 'last' => 'Rubble', 'email' => 'betty@rubble.com' },
            { 'id' => 6, 'first' => "BamBam", 'last' => 'Rubble', 'email' => 'bambam@rubble.com' }]

    seed.each do |data|
      User.create! data
    end
  end

  def self.down
    User.delete_all
  end
end
