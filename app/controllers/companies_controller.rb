# encoding: utf-8

class CompaniesController < ApplicationController

  def index
    @companies = Company.includes(:status).select('CiaId, DenominacionCorta, Estado_ID').order :CiaId

    respond_to do |format|
      format.html { render layout: 'application' }
      format.json { render json: @companies }
    end
  end

  def data
    @company     = Company.find params[:id]
    @branches    = @company.branches.where Fecha_Baja: nil, Tipo: 'S'
    @agencies    = @company.branches.where Fecha_Baja: nil, Tipo: 'A'
    @president   = @company.directors.where(Funcion_DL: 'Presidente').order(:DirectorioID).last
    @shareholder = @company.shareholders.order(:AccionistasID, :Participacion).last
  end

  def headquarters
    @company = Company.find params[:id]
  end

  def branches
    @company  = Company.find params[:id]
    @branches = @company.branches.where Fecha_Baja: nil, Tipo: 'S'
    render locals: { title: 'Sucursales', branches: @branches }
  end

  def agencies
    @company  = Company.find params[:id]
    @agencies = @company.branches.where Fecha_Baja: nil, Tipo: 'A'
    render locals: { title: 'Agencias', branches: @agencies }, template: 'companies/branches'
  end

  def directors
    @company           = Company.find params[:id]
    @last_presentation = @company.directors.maximum :DirectorioID
    @presentation      = params[:presentation] || @last_presentation
    @directors         = @company.directors.where DirectorioID: @presentation
  end

  def shareholders
    @company           = Company.find params[:id]
    @last_presentation = @company.shareholders.maximum :AccionistasID
    @presentation      = params[:presentation] || @last_presentation
    @shareholders      = @company.shareholders.where AccionistasID: @presentation
  end

  def balance
    activo = { 'Disponibilidades' => '1.01.00.00.00.00.00.00',
               'Inversiones'      => '1.02.00.00.00.00.00.00',
               'Créditos'         => '1.03.00.00.00.00.00.00',
               'Inmuebles'        => '1.04.00.00.00.00.00.00',
               'Bienes de uso'    => '1.05.00.00.00.00.00.00',
               'Otros activos'    => '1.06.00.00.00.00.00.00' }

    pasivo = { 'Deudas con asegurados' => '2.01.01.00.00.00.00.00',
               'Otras deudas'          =>['2.01.02.01.00.00.00.00',
                                          '2.01.02.02.00.00.00.00',
                                          '2.01.02.04.00.00.00.00',
                                          '2.01.03.01.00.00.00.00',
                                          '2.01.04.04.04.01.00.00',
                                          '2.01.04.04.04.02.00.00',
                                          '2.01.04.04.04.03.01.00',
                                          '2.01.04.04.04.03.02.00',
                                          '2.01.04.04.04.04.01.00',
                                          '2.01.04.04.04.04.02.00',
                                          '2.01.04.04.04.50.00.00',
                                          '2.01.04.04.04.51.00.00',
                                          '2.01.05.01.01.00.00.00',
                                          '2.01.05.02.02.00.00.00',
                                          '2.01.05.03.03.00.00.00',
                                          '2.01.06.06.06.00.00.00'],
               'Compromisos técnicos'  => '2.02.00.00.00.00.00.00',
               'Previsiones'           => '2.03.00.00.00.00.00.00',
               'Participación de terceros en sociedades controladas' => '2.04.00.00.00.00.00.00' }

    @company = Company.find params[:id]

    @periods = @company.presentations.where('ID_ultima_entrega IS NOT NULL').includes(:schedule).map { |presentation| {periodo: presentation.schedule.periodo, ID_ultima_entrega: presentation.ID_ultima_entrega} }.sort_by { |k| k[:periodo] }

    @period = @periods.find { |k| k[:periodo] == params[:periodo] } || @periods.last

    if @period
      account_plan = AccountPlan.find(@period[:ID_ultima_entrega])
      @assets = account_plan.accounts.values activo
      @liabilities = account_plan.accounts.values pasivo
    else
      #TODO: Pantalla datos no encontrados.
    end
  end
end
