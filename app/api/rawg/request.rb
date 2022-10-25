module Rawg
    class Request
        # constants 
        BASE_URL = "https://api.rawg.io/api/"
        TOKEN = "6cde2e0415a2465cbb627cab59b749f5"

        def self.connection
            Faraday.new(url: BASE_URL, params: { key: TOKEN }) do |f|
                f.request :json # encode req bodies as JSON
                f.response :json # decode response bodies as JSON
                f.adapter :net_http # Use the Net::HTTP adapter
            end
        end
    end
end