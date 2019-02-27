class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = ""
  end

  def seconds
    return @seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds / 60) - (60 * hours)
    leftovers = @seconds % 60

    if(hours > 0)
      if(hours < 10)
        @time_string += "0"
      end
      @time_string += hours.to_s + ":"
    else
      @time_string += "00:"
    end

    if(minutes > 0)
      if(minutes < 10)
        @time_string += "0"
      end
      @time_string += minutes.to_s + ":"
    else
      @time_string += "00:"
    end

    if(leftovers > 0)
      if(leftovers < 10)
        @time_string += "0"
      end
      @time_string += leftovers.to_s
    else
      @time_string += "00"
    end


    return @time_string
  end
end
