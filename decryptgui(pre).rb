require 'tk'
require 'tkextlib/tile'
require_relative 'cantor'

root = TkRoot.new {title "dencrypt your grades"}
root['geometry'] = '200x240'
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Privater Schlüssel: '; pack}
key = Tk::Tile::Entry.new(print) { textvariable $key; pack}
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Verschlüsselte Note: '; pack}
grade = Tk::Tile::Entry.new(print) { textvariable $grade; pack}
label = Tk::Tile::Label.new(print){text ""; pack}
action = Tk::Tile::Button.new(root) {text "Entschlüsseln"; default "active"; command { 
    C = (grade.get); L = (key.get);
  
      
    L= L.to_i
    C = C.to_i
    d, n = inv_cantor(L)

    
    # calculates M
    M = C**d % n
    

    label = Tk::Tile::Label.new(print) {font TkFont.new('Arial 11'); text "Deine Note: #{M.to_f/100}"; pack}


    }; pack}

    root.bind("Return", proc{action.invoke()})





Tk.mainloop

