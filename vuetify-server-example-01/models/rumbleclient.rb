

class RumbleClient
  def initialize
    @client = MlabClient.new
    @client.connect
  end

  def finalize
    @client.close
  end

  def origin_names
    @client.collection('rumble_name_master').find(alias: false).each do |row|
      yield row
    end
  end
end