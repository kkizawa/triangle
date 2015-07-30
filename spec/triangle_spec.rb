require File.expand_path(File.dirname(__FILE__) + '/../triangle_module')

describe Triangle do
  before do
    Triangle.stdout_replaces_to_mock_obj
  end

  after do
    Triangle.stdout_back_to_default
  end

  specify {
    Triangle.said(['2,','3,','4'])
    expect($stdout.read).to eq "不等辺三角形ですね！"
  }

  specify { 
    Triangle.said(['2,','2,','1'])
    expect($stdout.read).to eq "二等辺三角形ですね！"
   }

  specify {
#pending
    Triangle.said(['1,','1,','1'])
    expect($stdout.read).to eq "正三角形ですね！"
  }

  specify {
#pending
    Triangle.said(['1,','2,','3'])
    expect($stdout.read).to eq "三角形じゃないです＞＜"
  }

  specify {
#pending
    Triangle.said([])
    expect($stdout.read).to eq "三角形じゃないです＞＜"
  }

end

class File
  attr_reader :read
  def puts(str)
    @read = str
  end
end


