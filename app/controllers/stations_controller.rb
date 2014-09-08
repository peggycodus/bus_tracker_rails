class StationsController < ActionController::Base

def index
  @stations = Station.all
end

def new
  @station = Station.new
end

def create

    @station = Station.new(params[:station])
    if @station.save
      redirect_to ('/stations')
    else
      render ('stations/new.html.erb')
    end
end

def show
  @station = Station.find(params[:id])
end

def update
end

def edit
end

def delete
end

end
