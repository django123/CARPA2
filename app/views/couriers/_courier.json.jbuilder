json.extract! courier, :id, :reference, :subject, :sender, :receiver, :state, :sentDate, :receiveDate, :order_number, :user_id, :project_id, :created_at, :updated_at
json.url courier_url(courier, format: :json)
