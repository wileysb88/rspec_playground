class Bubble

  def initialize(array)
    @array = array
  end

  def sort
    p "Starting sort"
    length = @array.length
    p "Array length: #{@array.length}"
    loop do
      p "loop started"
      is_swapped = false #assume we don't need a swap yet
      #each time we loop, we decrement the loop by one
      p "is swapped? #{is_swapped}"
      (length-1).times do |i|
        p "Interior loop inside of loop has started"
        p "incrementor: #{i}"
        #@array[i] = left value, @array[i+1] = right value
        if (@array[i] > @array[i + 1])
          @array[i], @array[i + 1] = @array[i + 1], @array[i]
          is_swapped = true
          p "Swapped pair#{@array[i]} with #{@array[i + 1]}"
        end #end comparison if
      end # end .times
      break if not is_swapped #break the loop if is_swapped ==false
    end # end loop
    return @array #returns our sorted array
  end # end sort
end # end class


nums = [6, 42, 13, 1, 409]

sorted_nums = Bubble.new(nums).sort
# sorted_nums will  end up being 1, 6, 13, 42, 409


describe Bubble do
  it "should be sorted" do
    sorted_nums.to_s = [1, 6, 13, 42, 409]
  end
end
