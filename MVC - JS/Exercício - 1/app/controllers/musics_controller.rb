class MusicsController < ApplicationController

    def index
        @musics = Music.all
    end

    def show
        @music = Music.find(params[:id])
    end

    def new
        @music= Music.new
    end
    
    def create
        @music = Music.create(music_params)
        
        redirect_to music_path(@music.id)
    end
    
    def edit
        @music = Music.find(params[:id])
    end

    def update
        @music = Music.find(params[:id])
        @music.update(music_params)
    
        redirect_to music_path(@music.id)
    end

    def destroy
        @music= Music.find(params[:id])
        @music.destroy
    
        redirect_to albums_path
    end

    private
        def music_params
            params.require(:music).permit(:name, :explicit, :album_id, :genre)
        end

end
