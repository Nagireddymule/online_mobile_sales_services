class VisitorsController < ApplicationController
  def index
    if user_signed_in?
      if params['delar_city'].present?
        delars = Delar.where(:city => params['delar_city'])
      elsif current_user.city.present?
        delars = Delar.where(:city => current_user.city)
      end
    elsif params['delar_city'].present?
      delars = Delar.where(:city => params['delar_city'])
    end
    if request.xhr?
      @mobiles =if params['mobile'].present?
                  if delars.present?
                    Mobile.joins(:mobiles_delars).where(mobile_params).where(["mobiles_delars.delar_id IN (?)", delars.map(&:id)]).uniq
                  else
                    Mobile.where(mobile_params).uniq
                  end
                else
                  if delars.present?
                    Mobile.joins(:mobiles_delars).where(["mobiles_delars.delar_id IN (?)", delars.map(&:id)]).uniq
                  else
                    Mobile.all.uniq
                  end
                end

      render :partial => 'visitors/thumb_mobile', :collection => @mobiles,  :as => :mobile, :layout => false
    else
      @mobiles = if delars.present?
                   Mobile.joins(:mobiles_delars).where(["mobiles_delars.delar_id IN (?)", delars.map(&:id)]).uniq
                 else
                   Mobile.all.uniq
                 end
    end
  end

  def mobile_show
    @mobile = Mobile.find(params[:mobile_id])
  end

  def send_sms
    delar = Delar.find(params[:delar_id])
    msg = "Hi #{delar.name}, Contact Me: #{current_user.name}, Mobile No: #{current_user.contact_number}"
    @client = Twilio::REST::Client.new
    @client.account.messages.create({:to => "+91#{delar.contact}", :from => '+12018796790', :body => msg})
    render :json => {:success => true}
  end

  private

  def mobile_params
    params.require(:mobile).permit({:brand_name => []}, {:mobile_type => []}, {:battery_capacity => []}, {:screen_size => []},
                                   {:ram => []}, {:sim_type => []}, {:primary_camera => []}, {:os_version_name => []}, {:secondary_camera => []},
                                   {:features => []}, {:number_of_cores => []})
  end

end
