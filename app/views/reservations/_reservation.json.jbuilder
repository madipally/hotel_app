json.extract! reservation, :id, :check_in_date, :check_out_date, :room_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
