#macro             sdm show_debug_message
#macro           tostr string
#macro         degrees radtodeg
#macro         radians degtorad

#macro            DSKT @"C:\Users\Chymic\Desktop\"
#macro identity_matrix matrix_build_identity()
#macro              _G global
#macro             nil undefined
#macro          is_nil is_undefined
//#macro            unin -1

#macro              dt (delta_time / 1000000)
#macro            time (current_time / 1000)
#macro date_current_unix date_second_span(date_create_datetime(1970, 1, 1, 0, 0, 0), date_current_datetime())

#region buffer macros
#macro      sizeof buffer_sizeof
#macro buffer_size buffer_get_size

#macro       u8 buffer_u8     // byte
#macro       s8 buffer_s8     // char
#macro      u16 buffer_u16    // ushort
#macro      s16 buffer_s16    // short
#macro      u32 buffer_u32    // uint
#macro      s32 buffer_s32    // int
#macro      u64 buffer_u64    // long  (gamemaker has no signed 64 bit read.)
#macro      s64 buffer_u64    // ulong (i think u64 counts as s64, needs testing.)
#macro      f16 buffer_f16    // half
#macro      f32 buffer_f32    // single / float
#macro      f64 buffer_f64    // double
#macro string_t buffer_string // null terminated unicode string
#macro   text_t buffer_text   // interprets all bytes from the seek position to the end as a string
#macro   bool_t buffer_bool   // one byte, 0 is FALSE, non-zero is TRUE
	                            // todo: put in feature request for buffer_read_byte_flag(buffer, mask);

#macro   u8_size sizeof(u8)  // I could just hard-code these values but
#macro   s8_size sizeof(s8)  // i suppose the reasons for the dumb c/c++ names
#macro  u16_size sizeof(u16) // is that their actual size could change 
#macro  s16_size sizeof(s16) // per-platform, and they just imply how many
#macro  u32_size sizeof(u32) // "single units" they take up.
#macro  s32_size sizeof(s32) // thats dumb.
#macro  u64_size sizeof(u64)
#macro  s64_size sizeof(u64) // todo: what?
#macro  f16_size sizeof(f16)
#macro  f32_size sizeof(f32)
#macro  f64_size sizeof(f64)
#macro bool_size sizeof(bool_t)

#macro      seek_set buffer_seek_start
#macro      seek_end buffer_seek_end
#macro seek_relative buffer_seek_relative
#macro   seek_offset seek_relative

#endregion
