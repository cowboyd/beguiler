module Beguiler
  class Context
    def evaluate(string)
      C.scm_c_eval_string string
    end
  end
end
