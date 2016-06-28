module ApplicationHelper
  def get_delars_message
    if user_signed_in?
      if current_user.city.present?
        if delars_exist?
          "( #{current_user.city.capitalize} delars )"
        else
          "(In your city we don't have delars. So we are showing all our delars.)"
        end
      else
        "(Add city in your account to get delars for your city.)"
      end

    else
      "(All delars)"
    end
  end

  def delars_exist?
    delars = Delar.where(:city => current_user.city)
    if delars.present?
      mobiles_count = Mobile.joins(:mobiles_delars).where(["mobiles_delars.delar_id IN (?)", delars.map(&:id)]).count
      mobiles_count > 0
    else
      false
    end
  end
end
