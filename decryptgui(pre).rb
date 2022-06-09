require 'tk'
require 'tkextlib/tile'
require_relative 'cantor'
runthroughs = 0
#Draws window
root = TkRoot.new {title "dencrypt your grades"}
root['geometry'] = '200x240'
#generates UI Elements
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Privater Schlüssel: '; pack}
key = Tk::Tile::Entry.new(print) { textvariable $key; pack}
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Verschlüsselte Note: '; pack}
grade = Tk::Tile::Entry.new(print) { textvariable $grade; pack}
label = Tk::Tile::Label.new(print){text ""; pack}
label = Tk::Tile::Label.new(print){text "Deine Note:"; pack}
label = Tk::Tile::Label.new(print){text ""; pack}
result = Tk::Tile::Entry.new(print) {
    width 10;
    pack
   }

label = Tk::Tile::Label.new(print){text ""; pack}
action = Tk::Tile::Button.new(root) {text "Entschlüsseln"; default "active"; command { 
    C = (grade.get); L = (key.get);
  #fetches necessary variables and uses cantor library 
      
    L= L.to_i
    C = C.to_i
    d, n = inv_cantor(L)

    
    # calculates M
    M = C**d % n
   #overrites textbox with calculated result
 result.delete('0', 'end')
    result.insert 'end', "#{M}"

    }; pack}

    root.bind("Return", proc{action.invoke()})





Tk.mainloop


