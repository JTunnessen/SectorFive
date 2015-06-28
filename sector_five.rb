require 'gosu'
require_relative 'player'

class SectorFive < Gosu::Window
WIDTH = 800
HEIGHT = 600

	def initialize
		super WIDTH, HEIGHT, false
		self.caption = "Sector Five"
		@player = Player.new(self)
	end

	def draw
		@player.draw
	end

	def update
		if button_down?(Gosu::KbLeft)
			@player.turn_left
		end
		if button_down?(Gosu::KbRight)
			@player.turn_right
		end
		if button_down?(Gosu::KbUp)
			@player.accelerate
		end
		@player.move
	end
end

window = SectorFive.new
window.show