require 'pry'

class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complextion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

    def initialize(stats)
      stats.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
      end
    end

end