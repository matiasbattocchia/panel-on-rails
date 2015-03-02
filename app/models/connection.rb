module Connection

  class Connection::Entidades < ActiveRecord::Base
    self.abstract_class = true
    establish_connection 'entidades'
  end

  class Connection::Sinensup < ActiveRecord::Base
    self.abstract_class = true
    establish_connection 'sinensup'
  end

  class Connection::Panel < ActiveRecord::Base
    self.abstract_class = true
    establish_connection 'development'
  end

end
