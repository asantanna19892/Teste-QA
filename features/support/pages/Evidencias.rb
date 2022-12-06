class Evidencias 
    include Capybara::DSL
    

    def screen_recorder (cenario)
        advanced = {
        input:    {
            framerate:  60,
            video_size: '1366x768'
            #video_size: Coloque a resolução recomendada para seu pc.
        },
        output:   {
            r:       15, # Framerate
        },
        log:      'recorder.log',
        loglevel: 'level+debug', # For FFmpeg
        }
        ScreenRecorder::Desktop.new(output: "data/video/#{cenario}.mp4", advanced: advanced)
    end

    # Método inserido no step "Dado" 
    def iniciando_filmagem
        nome = ("#{$tag}-#{$scn}-#{$id}").gsub(/\s+/, "")
        nome = nome.gsub("Exemplos(#", "_")
        nome = nome.gsub(")", "")
        @@recorder = Evidencias.new.screen_recorder(nome)
        @@recorder.start
    end


    # Método inserido no step de validação ou em hooks
    def encerrando_filmagem
        sleep(2)
        @@recorder.stop
    end
end