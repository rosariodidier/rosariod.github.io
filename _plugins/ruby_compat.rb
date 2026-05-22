# Compatibility shim for older Jekyll/Liquid releases on modern Ruby.
unless "".respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
