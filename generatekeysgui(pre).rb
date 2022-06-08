require 'tk'
require 'tkextlib/tile'
require_relative 'generatekeys'
privatekey = returnprivatekey
publickey = returnpublickey
root = TkRoot.new {title "generate keys"}
root['geometry'] = '280x240'
label = Tk::Tile::Label.new(public){
    text "Öffentlicher Schlüssel:"; 
    font TkFont.new('Arial 13');
    pack
}

pubkey = Tk::Tile::Entry.new(print) {
     textvariable $key; 
     width 30;
     pack
    }
label = Tk::Tile::Label.new(public){
    text ""; 
    font TkFont.new('Arial 13');
    pack
}
pubkey.insert 'end', publickey
label = Tk::Tile::Label.new(public){
    text "Privater Schlüssel:"; 
    font TkFont.new('Arial 13');
    pack
}
closedkey = Tk::Tile::Entry.new(print) {
     textvariable $ckey; 
     width 30;
     pack
    }
closedkey.insert 'end', privatekey
label = Tk::Tile::Label.new(public){
    text ""; 
    font TkFont.new('Arial 13');
    pack
}
action = Tk::Tile::Button.new(root) {text "Neu Generieren"; default "active";  pack}

    root.bind("Return", proc{action.invoke()})
action.bind('ButtonRelease-1') {
    newgen
    privatekey = returnprivatekey
    publickey = returnpublickey 
    closedkey.delete('0', 'end')
    pubkey.delete('0', 'end')
    closedkey.insert 'end', "#{privatekey}"
    pubkey.insert 'end', "#{publickey}"
}

Tk.mainloop

 
