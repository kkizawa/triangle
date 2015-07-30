module Triangle
  def self.stdout_replaces_to_mock_obj
    $stdout = File.new(__FILE__, 'r')
  end

  def self.said(abc)
    abc.map! do |e| e.to_i end
    if ratio?(abc)
      if abc.uniq.size == 1
        puts "正三角形ですね！"
      elsif abc.uniq.size == 2
        puts "二等辺三角形ですね！"
      else
        puts "不等辺三角形ですね！"
      end
    else
      puts "三角形じゃないです＞＜"
    end 
  end

  def self.ratio?(sides)
    return false unless sides.size == 3
    sides[0]+sides[1]>sides[2] and
    sides[1]+sides[2]>sides[0] and
    sides[2]+sides[0]>sides[1]
  end

  def self.stdout_back_to_default
    $stdout = STDOUT
  end

end
