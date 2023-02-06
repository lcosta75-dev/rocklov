require 'mongo'

Mongo::Logger.logger = Logger.new("./logs/mongo.log")

class MongoDB

    def remove_user(email)
        client = Mongo::Client.new('mongodb://192.168.0.102:27017/rocklov')
        users = client[:users]
        users.delete_many({email: email})
    end
end

