class ExhibidoresController < ApplicationController

  respond_to :html

  # GET /push
  def push_form
    # TODO: Centralizar esta información
    @pubsub_url = ENV['PUB_SUB_URL'] || "http://localhost:4000/sub"

    respond_to do |format|
      format.html { render :layout => 'pusher' }
    end
  end

  # POST /push
  def push
    logger.debug(params[:msg])
    @mensaje = Mensaje.new(params[:mensaje])

    if @mensaje.post(:pub)
      redirect_to(push_exhibidores_url, :notice => 'El mensaje fue publicado.')
    else
      format.html { render :action => "push_form" }
    end

  end

  # GET /exhibidores
  # GET /exhibidores.xml
  def index
    @exhibidores = Exhibidor.all
    respond_with @exhibidores
  end

  # GET /exhibidores/1
  # GET /exhibidores/1.xml
  def show
    @exhibidor = Exhibidor.find(params[:id])
    @pubsub_url = ENV['PUB_SUB_URL'] || "http://localhost:4000/sub"
    respond_to do |format|
      format.html { render :layout => 'pantalla' }
      format.xml  { render :xml => @exhibidor }
    end
  end

  # GET /exhibidores/new
  # GET /exhibidores/new.xml
  def new
    @exhibidor = Exhibidor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exhibidor }
    end
  end

  # GET /exhibidores/1/edit
  def edit
    @exhibidor = Exhibidor.find(params[:id])
  end

  # POST /exhibidores
  # POST /exhibidores.xml
  def create
    @exhibidor = Exhibidor.new(params[:exhibidor])

    respond_to do |format|
      if @exhibidor.save
        format.html { redirect_to(@exhibidor, :notice => 'Exhibidor was successfully created.') }
        format.xml  { render :xml => @exhibidor, :status => :created, :location => @exhibidor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exhibidor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exhibidores/1
  # PUT /exhibidores/1.xml
  def update
    @exhibidor = Exhibidor.find(params[:id])

    respond_to do |format|
      if @exhibidor.update_attributes(params[:exhibidor])
        format.html { redirect_to(@exhibidor, :notice => 'Exhibidor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exhibidor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibidores/1
  # DELETE /exhibidores/1.xml
  def destroy
    @exhibidor = Exhibidor.find(params[:id])
    @exhibidor.destroy

    respond_to do |format|
      format.html { redirect_to(exhibidores_url) }
      format.xml  { head :ok }
    end
  end
end

