module Mini
  module Blog
    class Engine < ::Rails::Engine
      isolate_namespace Mini::Blog
    end
  end
end
