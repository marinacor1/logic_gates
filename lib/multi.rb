require 'pry'
module And
  class Multi
    attr_accessor :inputs

    def initialize(multiple)
      @multiple = (0...multiple).to_a
      @output = 0
      @inputs = []
      input_creator
    end


    def input_creator
        @multiple.each do |gate|
        letter= ('a'..'z').to_a[gate]
        # @inputs << ("@input_" + letter)
        self.class.send(:attr_accessor, letter)
      end
    end

    def output
      gate_generator
      if @inputs.all? do |gate|
          gate == 1
        end
        @output = 1
      else
        @output = 0
      end
    end

    def gate_generator
      @inputs.each do |gate|
        if gate == 0
          @output = 0
        else
          setup_as_1(gate)
        end
      end
    end

    def setup_as_1(input)
      input = 1
    end

  end


end
  #def initialize(multple)
  #(1..multiple)..map do |gate|

  #output = 0
  #multiple = multiple
  #end
    #def output
    #if input == 0
     #output = 0
     #else
      #setup_as_1(input)
    #input= 1
    #
