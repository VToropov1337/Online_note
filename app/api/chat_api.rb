module ChatApi
  class Message < Grape::API
    prefix :api
    version 'v1'
    format :json


#api/v1/messages
    resource :messages do
      get do
        { hello: 'world' }
      end
      #api/v1/messages/:id
      get ':id' do
        { message_id: params[:id] }
      end
    end
  end
end
