#!/home/thomas/.shoes/walkabout/shoes
Shoes.app(title: "Shutdown Timer", width: 400, height: 400, resizable: false) {
  stack(margin: 20) do
    para "When do you want the computer to shut down?"
    para "Enter time value in minutes"
    @timeval = edit_line
    @push = button "Submit"
    @time = para ""
    @push.click do
      @time.replace "Computer will shut down in " + @timeval.text + " minute(s)."
    end
  end
}

















