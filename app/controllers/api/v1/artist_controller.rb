module Api
    module V1
        class ArtistController < AplicationController
            def index
                artists = Artist.order('created_at DESC');
                render json: {status: 'OK', message: "Artist loaded", data: artists}, status: :OK
            end
        end
    end
end

