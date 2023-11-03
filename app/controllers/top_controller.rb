class TopController < ApplicationController
    def index
        if session[:login_uid] != nil
            render 'top/index'
        else
            render 'top/login'
        end
    end
    
    def login
        uid = params[:uid]
        pass = params[:pass]
    
        # 所定の条件に合致する場合
        if uid == "kindai" && pass == "sanritu"
            session[:login_uid] = uid
            redirect_to action: "index", controller: "top", allow_other_host: true
        else
            redirect_to action: "error", controller: "top", allow_other_host: true
        end
    end
    
    def logout
        session[:login_uid].clear
        render 'top/login'
    end
end
