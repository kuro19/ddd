# Adapted software wiht Sketchup Ruby API Documentation
# For create a quickly sketch of simple parts.
# Tools from http://www.cadbox.ch/
# Name :          CBS for SketchUp 
# Description :   Sketch tool for © CupBoardSystem
# Author :        cadbox swiss 
# Usage :         Install this script according to the instructions on www.cadbox.ch
# Date :          10.01.2013
# Type :          Ruby Tool for SketchUp
# History:        CadBoxSystem 1.5 (10.03.2013)
#-------------------------------------------------------------------------------
# this is a translation german - english, created of cadbox.
# suggestions for specific and better words or expressions in english: cad@cadbox.ch
#-------------------------------------------------------------------------------

module CBS

def self.lang
%q{cn} 
end

def self.nav1
%q{ 4 Wall room }
end
def self.nav2
%q{CBS 地柜（单门）   }
end
def self.nav3
%q{CBS 吊柜（单门）   }
end
def self.nav4
%q{CBS 高柜（单门）   }
end
def self.nav5
%q{CBS 上柜（单门） }
end
def self.nav6
%q{CBS 下柜（单门）}
end
def self.nav7
%q{CBS 地柜（双门左边抽屉）   }
end
def self.nav8
%q{CBS 地柜（双门右边抽屉）   }
end
def self.nav9
%q{CBS 柜体侧面可见板   }
end
def self.nav10
%q{CBS 橱柜转角板  }
end
def self.nav11
%q{高柜（背板在侧板内）   }
end
def self.nav12
%q{高柜（背板在侧板外） }
end
def self.nav13
%q{餐边柜 }
end
def self.nav14
%q{简单的架子   }
end
def self.nav15
%q{踢脚板底座   }
end
def self.nav16
%q{柜体侧面装饰板  }
end
def self.nav17
%q{侧面的孔   }
end
def self.nav18
%q{顶板   }
end
def self.nav19
%q{隔板   }
end
def self.nav20
%q{局部: 简单主体    }
end
def self.nav21
%q{局部: 底板   }
end
def self.nav22
%q{局部: 侧板   }
end
def self.nav23
%q{局部: 背板   }
end
def self.nav24
%q{局部: 层板}
end
def self.nav25
%q{柜门参数   }
end
def self.nav26
%q{局部: 横向拉筋板  }
end
def self.nav27
%q{+SWISS+CupBoardSystem CBS (1/6 CBS = 127mm)}
end
def self.nav28
%q{+SWISS+CabinetTools for individual dimension}
end
def self.nav29
%q{柜体前面是否做门？ }
end


def self.mat1
%q{长度  }
end

def self.mat2
%q{高度  }
end

def self.mat3
%q{宽度  }
end

def self.mat4
%q{深度  }
end

def self.mat5
%q{厚度  }
end

def self.mat6
%q{板厚  }
end

def self.mat7
%q{ Body mass  }
end

def self.mat8
%q{宽度  }
end

def self.mat9
%q{深度  }
end

def self.mat10
%q{侧板厚度  }
end

def self.mat11
%q{底板厚度  }
end

def self.mat12
%q{背板厚度  }
end

def self.mat13
%q{Material strength  }
end

def self.mat14
%q{Mass  }
end

def self.mat15
%q{Height with CBS/6  }
end

def self.mat16
%q{Divided with CBS/6  }
end

def self.mat17
%q{房间墙面 左/右  }
end

def self.mat18
%q{房间墙面 前/后  }
end

def self.mat19
%q{房间高度  }
end

def self.mat20
%q{Wall strength   }
end

def self.mat21
%q{1.部分/最大}
end

def self.mat22
%q{2.部分 }
end

def self.mat23
%q{3.部分 }
end

def self.mat24
%q{4.部分 }
end

def self.mat25
%q{5.部分 }
end

def self.mat26
%q{6.部分 }
end

def self.mat261
%q{7.部分 }
end

def self.mat262
%q{8.部分 }
end

def self.mat263
%q{9.部分 }
end

def self.mat264
%q{10.部分 }
end

def self.mat27
%q{ 抽屉/门 宽度  }
end

def self.mat27a
%q{ 是否要抽屉？ }
end

def self.mat28
%q{底部 }
end

def self.pa1
%q{so }   # ground frame
end

def self.pa2
%q{si }   # side
end

def self.pa22
%q{bs }   # b side
end

def self.pa3
%q{bo }  # bottom
end

def self.pa4
%q{bw }  # back wall
end

def self.pa5
%q{ap }  # aperture
end

def self.pa6
%q{pl }  # plate
end

def self.pa7
%q{fr }  # front
end

def self.pa8
%q{np }  # narrow part
end




file_loaded('lang.rb')

end
