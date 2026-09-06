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
# Translated into Russian: Yuri / BYV / yur-blajnov@yandex.ua
#------------------------------------------------------------------------------- 
module CBS

def self.lang
%q{ru} 
end

def self.nav1
%q{ 4 Стены комнаты } 
end
def self.nav2
%q{CBS Нижний шкаф   }
end
def self.nav3
%q{CBS Верхний шкаф   }
end
def self.nav4
%q{CBS Пенал   }
end
def self.nav5
%q{CBS Верхний шкаф для аппаратуры }
end
def self.nav6
%q{CBS Нижний шкаф для аппаратуры }
end
def self.nav7
%q{CBS Угловой шкаф L   }
end
def self.nav8
%q{CBS Угловой шкаф R   }
end
def self.nav9
%q{CBS Фасад   }
end
def self.nav10
%q{CBS Отверстие шкафа  }
end
def self.nav11
%q{Вставная задняя стенка шкафа   }
end
def self.nav12
%q{Накладная задняя стенка шкафа }
end
def self.nav13
%q{Сервант }
end
def self.nav14
%q{Ниша   }
end
def self.nav15
%q{Каркас основания   }
end
def self.nav16
%q{Боковая сторона  }
end
def self.nav17
%q{Отверстие для сторон   }
end
def self.nav18
%q{Верхняя панель   }
end
def self.nav19
%q{Плита   }
end
def self.nav20
%q{Деталь: Брусок(заготовка)   }
end
def self.nav21
%q{Деталь: Основание   }
end
def self.nav22
%q{Деталь: Боковина   }
end
def self.nav23
%q{Деталь: Задняя стенка   }
end
def self.nav24
%q{Деталь: Полка}
end
def self.nav25
%q{Деталь: Фронт   }
end
def self.nav26
%q{Деталь: Поперечка  }
end
def self.nav27
%q{+SWISS+Системы шкафов CBS (1/6 CBS = 127mm)}
end
def self.nav28
%q{+SWISS+Инструменты для идивидульных размеров шкафа}
end
def self.nav29
%q{CBS лицевая часть: Разделить макс. }
end


def self.mat1
%q{Длина  }
end

def self.mat2
%q{Высота  }
end

def self.mat3
%q{Ширина  }
end

def self.mat4
%q{Глубина  }
end

def self.mat5
%q{Толщина  }
end

def self.mat6
%q{Толщина  }
end

def self.mat7
%q{ Масса тела  }
end

def self.mat8
%q{Ширина снаружи  }
end

def self.mat9
%q{Глубина внутри  }
end

def self.mat10
%q{Толщина боковин  }
end

def self.mat11
%q{Толщина основания  }
end

def self.mat12
%q{Толщина задней стенки  }
end

def self.mat13
%q{Толщина материала  }
end

def self.mat14
%q{Масса  }
end

def self.mat15
%q{Высота с CBS/6  }
end

def self.mat16
%q{Разделить с CBS/6  }
end

def self.mat17
%q{Стены комнаты слева/справа  }
end

def self.mat18
%q{Стены комнаты спереди/сзади  }
end

def self.mat19
%q{Высота помещения  }
end

def self.mat20
%q{Толщина стены   }
end

def self.mat21
%q{1.Деталь/max.}
end

def self.mat22
%q{2.Деталь }
end

def self.mat23
%q{3.Деталь }
end

def self.mat24
%q{4.Деталь }
end

def self.mat25
%q{5.Деталь }
end

def self.mat26
%q{6.Деталь }
end

def self.mat261
%q{7.Деталь }
end

def self.mat262
%q{8.Деталь }
end

def self.mat263
%q{9.Деталь }
end

def self.mat264
%q{10.Деталь }
end

def self.mat27
%q{ Ящик / Дверь ширина элемента  }
end

def self.mat27a
%q{ Ящик }
end

def self.mat28
%q{Основание  }
end

def self.pa1
%q{Каркас }   # ground frame
end

def self.pa2
%q{бок }   # side  
end

def self.pa22
%q{b бок }   # b side
end

def self.pa3
%q{дно }  # bottom
end

def self.pa4
%q{Задняя стенка }  # back wall
end

def self.pa5
%q{пролет }  # aperture
end

def self.pa6
%q{плита }  # plate
end

def self.pa7
%q{фасад }  # front
end

def self.pa8
%q{узкая часть }  # narrow part
end

file_loaded('lang.rb')

end
