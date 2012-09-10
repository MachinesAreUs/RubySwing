require 'rubygems'
require "rubeus"

Rubeus::Swing.irb

JFrame.new("Hello Swing in Jruby/Rubeus") do |frame|
  JPanel.new do |panel|
    panel.layout = BorderLayout.new(5, 5)
    panel.set_border(EmptyBorder.new(5, 5, 5, 5) ) 

    @btn = JButton.new("Click Me!") do
      @lbl.text = "You clicked me!"
    end
    @lbl = JLabel.new("Swing app in Rubeus") 
    
    panel.add(@btn, BorderLayout::CENTER)
    panel.add(@lbl, BorderLayout::SOUTH)
  end
  frame.pack()
  frame.show()
end