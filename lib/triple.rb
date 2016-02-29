module And
  class Triple
    attr_accessor :input_a, :input_b
    attr_reader :output

    def initialize
      @input_a = 0
      @input_b = 0
      @input_c = 0
    end

    def input_a
      @input_a
    end

    def input_b
      @input_b
    end

    def input_c
      @input_c
    end

    def output
      output = 0
      if @input_a == 1
        if @input_b == 1
          if @input_c == 1
            output = 1
          end
        end
      end
      output
    end



  end
end
