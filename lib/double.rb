module And
  class Double
    attr_accessor :input_a, :input_b
    attr_reader :output

    def initialize
    end

    def input_a
      @input_a
    end

    def input_b
      @input_b
    end

    def output
       output = 0
      if @input_a == 1
        if @input_b == 1
          output = 1
        end
      end
      output
    end

  end
end
