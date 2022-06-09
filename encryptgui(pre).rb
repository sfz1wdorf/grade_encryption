equire 'tk'
require 'tkextlib/tile'
require_relative 'cantor'
#draws Window
root = TkRoot.new {title "encrypt your grades"}
root['geometry'] = '200x240'
#generates UI elements
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Öffentlicher Schlüssel: '; pack}
key = Tk::Tile::Entry.new(print) { textvariable $key; pack}
label = Tk::Tile::Label.new(print){ font TkFont.new('Arial 11'); text 'Note: '; pack}
grade = Tk::Tile::Entry.new(print) { textvariable $grade; pack}
label = Tk::Tile::Label.new(print){text ""; pack}
label = Tk::Tile::Label.new(print) {font TkFont.new('Arial 11'); text "Verschlüsselt:"; pack}
result = Tk::Tile::Entry.new(print) {pack}
label = Tk::Tile::Label.new(print){text ""; pack}
action = Tk::Tile::Button.new(root) {text "Verschlüsseln"; default "active"; command { 
    M = (grade.get); L = (key.get);
  
    #fetches necessary variables and uses cantor library 
    L= L.to_i
    M = M.to_f
    x = (M*100).to_i
    e, n = inv_cantor(L)
    
    # calculates C (C = M^e  mod  N)
    C = x**e % n
   #overwrites textbox with calculated results

 result.delete('0', 'end')
    result.insert 'end', "#{C}"


    }; pack}

    root.bind("Return", proc{action.invoke()})





Tk.mainloop

