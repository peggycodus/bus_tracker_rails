class LinesController < ActionController::Base

def index
  @lines = Line.all
end

def new
  @stations = Station.all
  @line = Line.new
end

def create

  @line = Line.new(params[:line])
    if @line.save
      redirect_to ('/lines')
    else
      render ('lines/new.html.erb')
    end
end

def show
  @line = Line.find(params[:id])
end

def update
end

def edit
end

def delete
end

end
