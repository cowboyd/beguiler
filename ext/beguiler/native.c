#include <libguile.h>
#include <ruby.h>


VALUE bg_scm_c_eval_string(VALUE self, VALUE string) {
  const char * ptr = RSTRING_PTR(StringValue(string));
  SCM result = scm_c_eval_string(ptr);
  if (scm_is_integer(result)) {
    return INT2FIX(scm_to_int(result));
  }
  return Qnil;
}

void Init_native() {
  scm_init_guile();
  VALUE Beguiler = rb_define_module("Beguiler");
  VALUE C = rb_define_module_under(Beguiler, "C");

  rb_define_singleton_method(C, "scm_c_eval_string", bg_scm_c_eval_string, 1);
}
