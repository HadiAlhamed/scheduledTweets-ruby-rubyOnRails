#email:string
#password_digest:string
#has_secure_password adds some virtual attributes to the model, 
#password:virtual string
#password_confirmation:virtual string
class User < ApplicationRecord
    has_secure_password
end
