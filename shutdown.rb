#!/home/thomas/.shoes/walkabout/shoes
Shoes.app(title: "Shutdown Timer", width: 400, height: 400, resizable: false) {
  stack(margin: 20) do
    para "When do you want the computer to shut down?"
    para "Enter time value in minutes"
    @timeval = edit_line
    @push = button "Submit"
    @counter_text = para ""
    @push.click do
      @counter_text.replace "Computer will shut down in " + @timeval.text + " minute(s)."
      # Every minute change printing value to reflect minutes left
      every(5) do |count|
        print_val = @timeval.text.to_i - count - 1
        @counter_text.replace "Computer will shut down in " + print_val.to_s + " minute(s)."
      end
    end

  end
}

















