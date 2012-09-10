require 'java'

JFrame = javax.swing.JFrame
JPanel = javax.swing.JPanel
EmptyBorder = javax.swing.border.EmptyBorder
BorderLayout = java.awt.BorderLayout
JButton = javax.swing.JButton
JLabel = javax.swing.JLabel

frame = JFrame.new("Hello Swing in Jruby")
frame.default_close_operation = JFrame::EXIT_ON_CLOSE

lbl = JLabel.new("Swing App in JRuby")
btn = JButton.new("Click me!")
btn.add_action_listener do |e|
  lbl.text = "You clicked me!"
end

panel = JPanel.new( BorderLayout.new(5, 5) )
panel.set_border(EmptyBorder.new(5, 5, 5, 5) ) 
panel.add(btn, BorderLayout::CENTER)
panel.add(lbl, BorderLayout::SOUTH)

frame.content_pane.add(panel)
frame.pack()
frame.show()
