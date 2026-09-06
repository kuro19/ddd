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
# Si ringrazia l'autore del file della lingua italiana: robertopadulazzi@alice.it
#-------------------------------------------------------------------------------
module CBS

def self.lang
%q{it} 
end

def self.nav1
%q{Ambiente 4 Pareti   } 
end
def self.nav2
%q{CBS Base   }
end
def self.nav3
%q{CBS Pensile   }
end
def self.nav4
%q{CBS Colonna Armadio}
end
def self.nav5
%q{CBS Pensile per Apparati }
end
def self.nav6
%q{CBS Base per Apparati }
end
def self.nav7
%q{CBS Blocco Laterale SX   }
end
def self.nav8
%q{CBS Blocco Laterale DX   }
end
def self.nav9
%q{CBS Fiancata   }
end
def self.nav10
%q{CBS Montante Aperto  }
end
def self.nav11
%q{Colonna Armadio con Retro ad Incasso   }
end
def self.nav12
%q{Colonna Armadio con Retro Esterno }
end
def self.nav13
%q{Credenza }
end
def self.nav14
%q{Colonna Scaffale Semplice    }
end
def self.nav15
%q{Telaio a Terra   }
end
def self.nav16
%q{Fiancata  }
end
def self.nav17
%q{Montante Angolare Aperto   }
end
def self.nav18
%q{Alzata   }
end
def self.nav19
%q{Piano   }
end
def self.nav20
%q{Part: Corpo Semplice   }
end
def self.nav21
%q{Part: Fondo   }
end
def self.nav22
%q{Part: Fiancata   }
end
def self.nav23
%q{Part: Retro}
end
def self.nav24
%q{Part: Ripiano}
end
def self.nav25
%q{Part: Frontale   }
end
def self.nav26
%q{Part: Traverso  }
end
def self.nav27
%q{+SWISS+CupBoardSystem CBS (1/6 CBS = 127mm)}
end
def self.nav28
%q{+SWISS+Strumenti Armadio Progetto Personalizzato}
end
def self.nav29
%q{CBS Frontpart: Divisione Max. }
end


def self.mat1
%q{Lunghezza  }
end

def self.mat2
%q{Altezza  }
end

def self.mat3
%q{Larghezza  }
end

def self.mat4
%q{Profondità  }
end

def self.mat5
%q{Ampiezza  }
end

def self.mat6
%q{Spessore  }
end

def self.mat7
%q{ Estensione  }
end

def self.mat8
%q{Larghezza Esterna  }
end

def self.mat9
%q{Profondità Interna  }
end

def self.mat10
%q{Spessore Fiancata  }
end

def self.mat11
%q{Spessore Fondo  }
end

def self.mat12
%q{Spessore Retro  }
end

def self.mat13
%q{Spessore Materiale  }
end

def self.mat14
%q{Misura  }
end

def self.mat15
%q{Altezza con CBS/6  }
end

def self.mat16
%q{Suddivisione con CBS/6  }
end

def self.mat17
%q{Ambiente Muro sx/dx  }
end

def self.mat18
%q{Ambiente Muro fronte/retro  }
end

def self.mat19
%q{Ambiente Altezza  }
end

def self.mat20
%q{Spessore Muro   }
end

def self.mat21
%q{1.Part/max.}
end

def self.mat22
%q{2.Part }
end

def self.mat23
%q{3.Part }
end

def self.mat24
%q{4.Part }
end

def self.mat25
%q{5.Part }
end

def self.mat26
%q{6.Part }
end

def self.mat261
%q{7.Part }
end

def self.mat262
%q{8.Part }
end

def self.mat263
%q{9.Part }
end

def self.mat264
%q{10.Part }
end


def self.mat27
%q{ Cassetto / Anta larghezza elementi  }
end

def self.mat27a
%q{ Cassetto }
end

def self.mat28
%q{Fondo  }
end

def self.pa1
%q{so }   # telaio a terra
end

def self.pa2
%q{fi }   # fiancata  
end

def self.pa22
%q{bf }   # b fiancata
end

def self.pa3
%q{fo }  # fondo
end

def self.pa4
%q{bw }  # retro
end

def self.pa5
%q{ap }  # aperto
end

def self.pa6
%q{pi }  # piano
end

def self.pa7
%q{fr }  # frontale
end

def self.pa8
%q{ps }  # parte stretta
end



file_loaded('lang.rb')

end

