def inv_cantor(z)
    w = ((Math.sqrt(8.0*z.to_f + 1.0) - 1.0) / 2.0).floor
    t = (w**2 + w) / 2
    y = (z - t)
    x = (w - y)
    [x, y]

  end
  
  def cantor(x, y)
    (x + y) * (x + y + 1) / 2 + y
  end
  
  def test(n = 25)
    assert_equal = ->(a, b, msg) {
      raise "TEST FAILED!\n#{msg}" unless a == b
    }
    assert_not_equal = ->(a, b, msg) {
      raise "TEST FAILED!\n#{msg}" if a == b
    }
  
    assert_not_equal.(cantor(2, 1), cantor(1, 2), 'Pairing function should be order sensitive')
  
    n.times do |i|
      randx = rand(0...10**rand(1..8)).to_i
      randy = rand(0...10**rand(1..8)).to_i
      cantorxy = cantor(randx, randy)
      
      expected = [randx, randy]
      actual = inv_cantor(cantorxy)
  
      assert_equal.(expected, actual, "CHECK cantor(#{randx}, #{randy}) = #{cantorxy} BUT inv_cantor(#{cantorxy}) = #{actual.join(', ')}")
      puts "#{(i+1).to_s.rjust(n.to_s.size)}: cantor(#{randx.to_s.rjust(8)}, #{randy.to_s.rjust(8)}) => #{cantorxy.to_s.rjust(17)} => inv_cantor(_) => [#{actual.join(', ')}]"
    end
  end
