class DashboardController < ApplicationController
  def index
    @voyages = Voyage.all.where(eta: 4.weeks.ago..2.weeks.from_now)
    @vessels = Vessel.all
    @terminals = Terminal.all
    @ports = Port.all
    @shifts = Shift.all
    @gangs = Gang.all
    # @plans = Plan.find(params[:voyage_id])
  end

  def archive
    @voyages = Voyage.where("ata <= ?", DateTime.now)
    @vessels = Vessel.all
    @terminals = Terminal.all
    @ports = Port.all
    @shifts = Shift.all
    @gangs = Gang.all
  end
end
