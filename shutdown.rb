#!/home/thomas/.shoes/walkabout/shoes
Shoes.app(title: "Shutdown Timer", width: 400, height: 400, resizable: false) {
  stack(margin: 20) do
    para "When do you want the computer to shut down?"
    para "Enter sudo password:"
    @password = edit_line(:secret => true)
    para "Enter time value in minutes:"
    @timeval = edit_line
    @push = button "Submit"
    @counter_text = para ""
    
    @img = image "http://etc.usf.edu/clipart/48400/48481/48481_nclockb_lg.gif"
    @img.height = 100
    @img.width = 100
    
    @push.click do
      @counter_text.replace "Computer will shut down in " + @timeval.text + " minute(s)."
      # Every minute change printing value to reflect minutes left
      every(60) do |count|
        print_val = @timeval.text.to_i - count - 1
        @counter_text.replace "Computer will shut down in " + print_val.to_s + " minute(s)."
        if count == @timeval.text.to_i - 1
          para "Shutting down now"
          # Call shutdown function
          shut_down
        end 
      end
    end
  end
}

def shut_down
  # Shuts down the computer, need to have root access 
  # Super risky poweroff but it is what it is, it works.
  `echo #{@password.text} | sudo -S poweroff`  
end
