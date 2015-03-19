class Admin::DashboardController < Admin::BaseController
  def index
    @user_signups_1_day_count = User.where('created_at > ?', Time.zone.now - 1.day).count
    @user_signups_1_week_count = User.where('created_at > ?', Time.zone.now - 1.week).count
    @user_signups_1_month_count = User.where('created_at > ?', Time.zone.now - 1.month).count
    @user_count = User.count

    @checkins_created_1_day_count = Checkin.where('created_at > ?', Time.zone.now - 1.day).count
    @checkins_created_1_week_count = Checkin.where('created_at > ?', Time.zone.now - 1.week).count
    @checkins_created_1_month_count = Checkin.where('created_at > ?', Time.zone.now - 1.month).count
    @checkin_count = Checkin.count
  end
end
