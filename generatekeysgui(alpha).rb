require 'tk'

require_relative 'generatekeys'

root = TkRoot.new


privatekey = returnprivatekey
publickey = returnpublickey
 
btn_OK = TkButton.new(root) do
    text "generate new"
   font TkFont.new('monospace 17')
   width 10
   compound 'bottom'
   pack("side" => "bottom",  "padx"=> "100", "pady"=> "150")
   anchor "s"
   

end
text = TkText.new(root) do
    width 50
    height 20
    borderwidth 1
    font TkFont.new('times 12 bold')
    pack("side" => "top",  "padx"=> "5", "pady"=> "5")
 end
btn_OK.bind('ButtonRelease-1') {
    newgen
    privatekey = returnprivatekey
    publickey = returnpublickey 
    text.delete('1.0', 'end')
    text.insert 'end', "Privater Schlüssel: #{privatekey}\n\Öffentlicher Schlüssel: #{publickey}"
    }
    text.insert 'end', "Privater Schlüssel: #{privatekey}\n\Öffentlicher Schlüssel: #{publickey}"
Tk.mainloop
