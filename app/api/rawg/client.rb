module Rawg
    class Client
        # before_action :request_connection

        def self.games # shows all games
            connect = Request.connection
            connect.get("games").body
        end

        def self.upcoming # shows games releasing within the next year
            connect = Request.connection
            connect.get("games", { dates: "2022-10-25,2023-10-25" }).body
        end

        def self.pc # shows pc games sorted by rating
            connect = Request.connection
            connect.get("games", { platforms: "4", ordering: "-rating" }).body
        end

        def self.ea # shows games made by Electronic Arts sorted by rating
            connect = Request.connection
            connect.get("games", { developers: "109", ordering: "-rating" }).body
        end

        def self.twok1 # shows pc games released in 2001
            connect = Request.connection
            connect.get("games", { dates: "2001-01-01,2001-12-31" }).body
        end

        #private

        #def request_connection
        #    @connect = Request.connection
        #end
    end
end