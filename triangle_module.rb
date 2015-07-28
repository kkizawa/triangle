module Triangle
  def self.stdout_replaces_to_mock_obj
    $stdout = File.new(__FILE__, 'r')
  end

  def self.said(abc)
    msg = nil
    if ratio?(abc)
      if abc.uniq.size == 3 
        msg = "不等辺"
      elsif abc.uniq.size == 2
        msg = "二等辺"
      else
        msg = "正"
      end
      msg = "#{msg}三角形ですね！"
    else
      msg = "三角形じゃないです＞＜"
    end
    puts msg
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
