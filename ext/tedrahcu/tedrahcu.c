#include <ruby.h>
#include <uchardet.h>

/*
 * call-seq:
 *   detect(input)
 *
 * Return the charset that is detected in the input.
 */
static VALUE tedrahcu_detect(VALUE self, VALUE input)
{
  VALUE result;
  uchardet_t detector;

  // When the input is nil we return nil.
  if (NIL_P(input)) return Qnil;

  // In other cases we expect a string.
  Check_Type(input, T_STRING);

  detector = uchardet_new();
  uchardet_handle_data(detector, StringValuePtr(input), RSTRING_LEN(input));
  uchardet_data_end(detector);
  result = rb_str_new2(uchardet_get_charset(detector));
  uchardet_delete(detector);

  return result;
}

void Init_tedrahcu()
{
  VALUE mRingcurl;

  mRingcurl = rb_define_module("Tedrahcu");

  rb_define_module_function(mRingcurl, "detect", tedrahcu_detect, 1);
}
