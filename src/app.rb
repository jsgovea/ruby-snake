require_relative "views/ruby2d"
require_relative "model/state"
require_relative "actions/actions"


class App
    def initialize
      # Usamos una variable instancia para que todos los metodos
      # tengan acceso a ella y van a compartir el mismo objeto
      @state = Model::initial_state
    end
    def start
        view = View::Ruby2dView.new
        Thread.new { init_timer(view) }
        view.start(@state)


    end

    def init_timer(view)
        loop do

            @state = Actions::move_snake(@state)
            view.render(@state)
            sleep 0.5
            #trigger movement
        end
    end
end


app = App.new
app.start
