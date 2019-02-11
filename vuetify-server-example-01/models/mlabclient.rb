require 'mongo'

class MlabClient
  HOST = 'api.mlab.com'
  PATH = '/api/1/databases/%s/collections/%s'
  HEADER = {'Content-Type' => "application/json"}

  def initialize
    @database  = Config["MLAB_DATABASE"]
    @apikey    = Config["MLAB_APIKEY"]
  end

  def connect
    client_host = ['ds051863.mlab.com:51863']
    client_options = {
      database: @database,
      user: 'rumble-admin',
      password: 'dWV6mEdat0V6tcTdkjfLVDjJARx8X38t'
    }

    @client = Mongo::Client.new(client_host, client_options)




    # client['rumble_name_master'].find(alias: false).each do |elem|
    #   p elem
    # end
  end

  def collection(name)
    @client[name]
  end

  def close
    @client.close
  end
end