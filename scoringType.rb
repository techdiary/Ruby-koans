def score(dice)
  @strArray = dice.join
  ones = dice.take_while { |v| v == 1 }
  fives = dice.take_while { |v| v == 5 }
  @pointsArray = 0

  def trio(str)
    if @strArray =~ /(1){3}/
      @pointsArray += 1000
    elsif @strArray =~ /(5){3}/
      @pointsArray += dice[2] * 100
    else
      :no_trio
    end
  end

  if (dice.empty?)
    0
  elsif (trio(@strArray) == :no_trio)
    @pointsArray += (ones.length * 100)
    @pointsArray += (fives.length * 50)
    puts @pointsArray
  else
    trio(@strArray)
    @pointsArray += (ones.length * 100)
    @pointsArray += (fives.length * 50)
    puts @pointsArray
  end
end

score([5])
score([])
score([1])
score([1,1,1,1])
