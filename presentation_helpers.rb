def display(board)
  board.each do |row|
    row.each do |cell|
      if cell == ''
        print "*\t"
      else
        print "#{cell}\t"
      end
    end
    print "\n\n"
  end
end
