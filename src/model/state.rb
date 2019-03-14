# Representacion del estado del juego

# Un símbolo es el objeto más básico que puedes crear en Ruby:
# es un nombre y una ID interna. Los símbolos son útiles por que dado un símbolo,
# se refiere al mismo objeto en todo el programa. Por lo tanto,
# son más eficientes que los strings: dos strings con el mismo nombre,
# son dos objetos distintos. Esto implica un ahorra de tiempo y memoria.


  module Model
    module Direction
      UP = :up
      RIGHT = :right
      DOWN = :down
      LEFT = :left
    end

  class Coord <Struct.new(:row, :col)
  end

  class Food <Coord
  end

  class Snake <Struct.new(:positions)
  end

  class Grid <Struct.new(:rows, :cols)
  end

  class State <Struct.new(:snake, :food, :grid, :next_direction)
  end

  def self.initial_state
    Model::State.new(
        Model::Snake.new([
          Model::Coord::new(1,1),
          Model::Coord::new(0,1),
          ]),
        Model::Food.new(4,4),
        Model::Grid.new(8, 12),
        Direction:: DOWN
     )
  end

end