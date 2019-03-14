module Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        calc_next_position(state)

        # Verificar que la siguiente casilla sea valida
        # Si no es valida -> termina el juego
        if position_is_valid?(state)
            move_snake_to(state, next_position)
        else 
            end_game(state)
        end
        # Si es valida -> movemos la serpiente
    end
    
end