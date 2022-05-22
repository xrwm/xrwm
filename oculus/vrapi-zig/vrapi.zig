pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub extern fn android_get_application_target_sdk_version(...) c_int;
pub extern fn android_get_device_api_level(...) c_int;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __intptr_t = c_long;
pub const __uintptr_t = c_ulong;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = i16;
pub const uint_least16_t = u16;
pub const int_least32_t = i32;
pub const uint_least32_t = u32;
pub const int_least64_t = i64;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast64_t = i64;
pub const uint_fast64_t = u64;
pub const int_fast16_t = i64;
pub const uint_fast16_t = u64;
pub const int_fast32_t = i64;
pub const uint_fast32_t = u64;
pub const uintmax_t = u64;
pub const intmax_t = i64;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const jboolean = u8;
pub const jbyte = i8;
pub const jchar = u16;
pub const jshort = i16;
pub const jint = i32;
pub const jlong = i64;
pub const jfloat = f32;
pub const jdouble = f64;
pub const jsize = jint;
pub const jobject = ?*anyopaque;
pub const jclass = jobject;
pub const jstring = jobject;
pub const jarray = jobject;
pub const jobjectArray = jarray;
pub const jbooleanArray = jarray;
pub const jbyteArray = jarray;
pub const jcharArray = jarray;
pub const jshortArray = jarray;
pub const jintArray = jarray;
pub const jlongArray = jarray;
pub const jfloatArray = jarray;
pub const jdoubleArray = jarray;
pub const jthrowable = jobject;
pub const jweak = jobject;
pub const struct__jfieldID = opaque {};
pub const jfieldID = ?*struct__jfieldID;
pub const struct__jmethodID = opaque {};
pub const jmethodID = ?*struct__jmethodID;
pub const JavaVM = [*c]const struct_JNIInvokeInterface;
pub const union_jvalue = extern union {
    z: jboolean,
    b: jbyte,
    c: jchar,
    s: jshort,
    i: jint,
    j: jlong,
    f: jfloat,
    d: jdouble,
    l: jobject,
};
pub const jvalue = union_jvalue;
pub const JNIInvalidRefType: c_int = 0;
pub const JNILocalRefType: c_int = 1;
pub const JNIGlobalRefType: c_int = 2;
pub const JNIWeakGlobalRefType: c_int = 3;
pub const enum_jobjectRefType = c_uint;
pub const jobjectRefType = enum_jobjectRefType;
pub const struct_JNINativeInterface = extern struct {
    reserved0: ?*anyopaque,
    reserved1: ?*anyopaque,
    reserved2: ?*anyopaque,
    reserved3: ?*anyopaque,
    GetVersion: ?fn ([*c]JNIEnv) callconv(.C) jint,
    DefineClass: ?fn ([*c]JNIEnv, [*c]const u8, jobject, [*c]const jbyte, jsize) callconv(.C) jclass,
    FindClass: ?fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jclass,
    FromReflectedMethod: ?fn ([*c]JNIEnv, jobject) callconv(.C) jmethodID,
    FromReflectedField: ?fn ([*c]JNIEnv, jobject) callconv(.C) jfieldID,
    ToReflectedMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, jboolean) callconv(.C) jobject,
    GetSuperclass: ?fn ([*c]JNIEnv, jclass) callconv(.C) jclass,
    IsAssignableFrom: ?fn ([*c]JNIEnv, jclass, jclass) callconv(.C) jboolean,
    ToReflectedField: ?fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) jobject,
    Throw: ?fn ([*c]JNIEnv, jthrowable) callconv(.C) jint,
    ThrowNew: ?fn ([*c]JNIEnv, jclass, [*c]const u8) callconv(.C) jint,
    ExceptionOccurred: ?fn ([*c]JNIEnv) callconv(.C) jthrowable,
    ExceptionDescribe: ?fn ([*c]JNIEnv) callconv(.C) void,
    ExceptionClear: ?fn ([*c]JNIEnv) callconv(.C) void,
    FatalError: ?fn ([*c]JNIEnv, [*c]const u8) callconv(.C) void,
    PushLocalFrame: ?fn ([*c]JNIEnv, jint) callconv(.C) jint,
    PopLocalFrame: ?fn ([*c]JNIEnv, jobject) callconv(.C) jobject,
    NewGlobalRef: ?fn ([*c]JNIEnv, jobject) callconv(.C) jobject,
    DeleteGlobalRef: ?fn ([*c]JNIEnv, jobject) callconv(.C) void,
    DeleteLocalRef: ?fn ([*c]JNIEnv, jobject) callconv(.C) void,
    IsSameObject: ?fn ([*c]JNIEnv, jobject, jobject) callconv(.C) jboolean,
    NewLocalRef: ?fn ([*c]JNIEnv, jobject) callconv(.C) jobject,
    EnsureLocalCapacity: ?fn ([*c]JNIEnv, jint) callconv(.C) jint,
    AllocObject: ?fn ([*c]JNIEnv, jclass) callconv(.C) jobject,
    NewObject: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject,
    NewObjectV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jobject,
    NewObjectA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    GetObjectClass: ?fn ([*c]JNIEnv, jobject) callconv(.C) jclass,
    IsInstanceOf: ?fn ([*c]JNIEnv, jobject, jclass) callconv(.C) jboolean,
    GetMethodID: ?fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID,
    CallObjectMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jobject,
    CallObjectMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jobject,
    CallObjectMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallBooleanMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jboolean,
    CallBooleanMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jboolean,
    CallBooleanMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallByteMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jbyte,
    CallByteMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jbyte,
    CallByteMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallCharMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jchar,
    CallCharMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jchar,
    CallCharMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallShortMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jshort,
    CallShortMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jshort,
    CallShortMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallIntMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jint,
    CallIntMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jint,
    CallIntMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallLongMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jlong,
    CallLongMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jlong,
    CallLongMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallFloatMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jfloat,
    CallFloatMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jfloat,
    CallFloatMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallDoubleMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jdouble,
    CallDoubleMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) jdouble,
    CallDoubleMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallVoidMethod: ?fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) void,
    CallVoidMethodV: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]struct___va_list_tag) callconv(.C) void,
    CallVoidMethodA: ?fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) void,
    CallNonvirtualObjectMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jobject,
    CallNonvirtualObjectMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jobject,
    CallNonvirtualObjectMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallNonvirtualBooleanMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jboolean,
    CallNonvirtualBooleanMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jboolean,
    CallNonvirtualBooleanMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallNonvirtualByteMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jbyte,
    CallNonvirtualByteMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jbyte,
    CallNonvirtualByteMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallNonvirtualCharMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jchar,
    CallNonvirtualCharMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jchar,
    CallNonvirtualCharMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallNonvirtualShortMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jshort,
    CallNonvirtualShortMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jshort,
    CallNonvirtualShortMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallNonvirtualIntMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jint,
    CallNonvirtualIntMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jint,
    CallNonvirtualIntMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallNonvirtualLongMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jlong,
    CallNonvirtualLongMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jlong,
    CallNonvirtualLongMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallNonvirtualFloatMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jfloat,
    CallNonvirtualFloatMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jfloat,
    CallNonvirtualFloatMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallNonvirtualDoubleMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jdouble,
    CallNonvirtualDoubleMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jdouble,
    CallNonvirtualDoubleMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallNonvirtualVoidMethod: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) void,
    CallNonvirtualVoidMethodV: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) void,
    CallNonvirtualVoidMethodA: ?fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) void,
    GetFieldID: ?fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID,
    GetObjectField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jobject,
    GetBooleanField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jboolean,
    GetByteField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jbyte,
    GetCharField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jchar,
    GetShortField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jshort,
    GetIntField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jint,
    GetLongField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jlong,
    GetFloatField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jfloat,
    GetDoubleField: ?fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jdouble,
    SetObjectField: ?fn ([*c]JNIEnv, jobject, jfieldID, jobject) callconv(.C) void,
    SetBooleanField: ?fn ([*c]JNIEnv, jobject, jfieldID, jboolean) callconv(.C) void,
    SetByteField: ?fn ([*c]JNIEnv, jobject, jfieldID, jbyte) callconv(.C) void,
    SetCharField: ?fn ([*c]JNIEnv, jobject, jfieldID, jchar) callconv(.C) void,
    SetShortField: ?fn ([*c]JNIEnv, jobject, jfieldID, jshort) callconv(.C) void,
    SetIntField: ?fn ([*c]JNIEnv, jobject, jfieldID, jint) callconv(.C) void,
    SetLongField: ?fn ([*c]JNIEnv, jobject, jfieldID, jlong) callconv(.C) void,
    SetFloatField: ?fn ([*c]JNIEnv, jobject, jfieldID, jfloat) callconv(.C) void,
    SetDoubleField: ?fn ([*c]JNIEnv, jobject, jfieldID, jdouble) callconv(.C) void,
    GetStaticMethodID: ?fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID,
    CallStaticObjectMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject,
    CallStaticObjectMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jobject,
    CallStaticObjectMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallStaticBooleanMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jboolean,
    CallStaticBooleanMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jboolean,
    CallStaticBooleanMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallStaticByteMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jbyte,
    CallStaticByteMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jbyte,
    CallStaticByteMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallStaticCharMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jchar,
    CallStaticCharMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jchar,
    CallStaticCharMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallStaticShortMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jshort,
    CallStaticShortMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jshort,
    CallStaticShortMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallStaticIntMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jint,
    CallStaticIntMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jint,
    CallStaticIntMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallStaticLongMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jlong,
    CallStaticLongMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jlong,
    CallStaticLongMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallStaticFloatMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jfloat,
    CallStaticFloatMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jfloat,
    CallStaticFloatMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallStaticDoubleMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jdouble,
    CallStaticDoubleMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) jdouble,
    CallStaticDoubleMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallStaticVoidMethod: ?fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) void,
    CallStaticVoidMethodV: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]struct___va_list_tag) callconv(.C) void,
    CallStaticVoidMethodA: ?fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) void,
    GetStaticFieldID: ?fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID,
    GetStaticObjectField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jobject,
    GetStaticBooleanField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jboolean,
    GetStaticByteField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jbyte,
    GetStaticCharField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jchar,
    GetStaticShortField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jshort,
    GetStaticIntField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jint,
    GetStaticLongField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jlong,
    GetStaticFloatField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jfloat,
    GetStaticDoubleField: ?fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jdouble,
    SetStaticObjectField: ?fn ([*c]JNIEnv, jclass, jfieldID, jobject) callconv(.C) void,
    SetStaticBooleanField: ?fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) void,
    SetStaticByteField: ?fn ([*c]JNIEnv, jclass, jfieldID, jbyte) callconv(.C) void,
    SetStaticCharField: ?fn ([*c]JNIEnv, jclass, jfieldID, jchar) callconv(.C) void,
    SetStaticShortField: ?fn ([*c]JNIEnv, jclass, jfieldID, jshort) callconv(.C) void,
    SetStaticIntField: ?fn ([*c]JNIEnv, jclass, jfieldID, jint) callconv(.C) void,
    SetStaticLongField: ?fn ([*c]JNIEnv, jclass, jfieldID, jlong) callconv(.C) void,
    SetStaticFloatField: ?fn ([*c]JNIEnv, jclass, jfieldID, jfloat) callconv(.C) void,
    SetStaticDoubleField: ?fn ([*c]JNIEnv, jclass, jfieldID, jdouble) callconv(.C) void,
    NewString: ?fn ([*c]JNIEnv, [*c]const jchar, jsize) callconv(.C) jstring,
    GetStringLength: ?fn ([*c]JNIEnv, jstring) callconv(.C) jsize,
    GetStringChars: ?fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar,
    ReleaseStringChars: ?fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void,
    NewStringUTF: ?fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jstring,
    GetStringUTFLength: ?fn ([*c]JNIEnv, jstring) callconv(.C) jsize,
    GetStringUTFChars: ?fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const u8,
    ReleaseStringUTFChars: ?fn ([*c]JNIEnv, jstring, [*c]const u8) callconv(.C) void,
    GetArrayLength: ?fn ([*c]JNIEnv, jarray) callconv(.C) jsize,
    NewObjectArray: ?fn ([*c]JNIEnv, jsize, jclass, jobject) callconv(.C) jobjectArray,
    GetObjectArrayElement: ?fn ([*c]JNIEnv, jobjectArray, jsize) callconv(.C) jobject,
    SetObjectArrayElement: ?fn ([*c]JNIEnv, jobjectArray, jsize, jobject) callconv(.C) void,
    NewBooleanArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jbooleanArray,
    NewByteArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jbyteArray,
    NewCharArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jcharArray,
    NewShortArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jshortArray,
    NewIntArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jintArray,
    NewLongArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jlongArray,
    NewFloatArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jfloatArray,
    NewDoubleArray: ?fn ([*c]JNIEnv, jsize) callconv(.C) jdoubleArray,
    GetBooleanArrayElements: ?fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean) callconv(.C) [*c]jboolean,
    GetByteArrayElements: ?fn ([*c]JNIEnv, jbyteArray, [*c]jboolean) callconv(.C) [*c]jbyte,
    GetCharArrayElements: ?fn ([*c]JNIEnv, jcharArray, [*c]jboolean) callconv(.C) [*c]jchar,
    GetShortArrayElements: ?fn ([*c]JNIEnv, jshortArray, [*c]jboolean) callconv(.C) [*c]jshort,
    GetIntArrayElements: ?fn ([*c]JNIEnv, jintArray, [*c]jboolean) callconv(.C) [*c]jint,
    GetLongArrayElements: ?fn ([*c]JNIEnv, jlongArray, [*c]jboolean) callconv(.C) [*c]jlong,
    GetFloatArrayElements: ?fn ([*c]JNIEnv, jfloatArray, [*c]jboolean) callconv(.C) [*c]jfloat,
    GetDoubleArrayElements: ?fn ([*c]JNIEnv, jdoubleArray, [*c]jboolean) callconv(.C) [*c]jdouble,
    ReleaseBooleanArrayElements: ?fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean, jint) callconv(.C) void,
    ReleaseByteArrayElements: ?fn ([*c]JNIEnv, jbyteArray, [*c]jbyte, jint) callconv(.C) void,
    ReleaseCharArrayElements: ?fn ([*c]JNIEnv, jcharArray, [*c]jchar, jint) callconv(.C) void,
    ReleaseShortArrayElements: ?fn ([*c]JNIEnv, jshortArray, [*c]jshort, jint) callconv(.C) void,
    ReleaseIntArrayElements: ?fn ([*c]JNIEnv, jintArray, [*c]jint, jint) callconv(.C) void,
    ReleaseLongArrayElements: ?fn ([*c]JNIEnv, jlongArray, [*c]jlong, jint) callconv(.C) void,
    ReleaseFloatArrayElements: ?fn ([*c]JNIEnv, jfloatArray, [*c]jfloat, jint) callconv(.C) void,
    ReleaseDoubleArrayElements: ?fn ([*c]JNIEnv, jdoubleArray, [*c]jdouble, jint) callconv(.C) void,
    GetBooleanArrayRegion: ?fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]jboolean) callconv(.C) void,
    GetByteArrayRegion: ?fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]jbyte) callconv(.C) void,
    GetCharArrayRegion: ?fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]jchar) callconv(.C) void,
    GetShortArrayRegion: ?fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]jshort) callconv(.C) void,
    GetIntArrayRegion: ?fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]jint) callconv(.C) void,
    GetLongArrayRegion: ?fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]jlong) callconv(.C) void,
    GetFloatArrayRegion: ?fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]jfloat) callconv(.C) void,
    GetDoubleArrayRegion: ?fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]jdouble) callconv(.C) void,
    SetBooleanArrayRegion: ?fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]const jboolean) callconv(.C) void,
    SetByteArrayRegion: ?fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]const jbyte) callconv(.C) void,
    SetCharArrayRegion: ?fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]const jchar) callconv(.C) void,
    SetShortArrayRegion: ?fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]const jshort) callconv(.C) void,
    SetIntArrayRegion: ?fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]const jint) callconv(.C) void,
    SetLongArrayRegion: ?fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]const jlong) callconv(.C) void,
    SetFloatArrayRegion: ?fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]const jfloat) callconv(.C) void,
    SetDoubleArrayRegion: ?fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]const jdouble) callconv(.C) void,
    RegisterNatives: ?fn ([*c]JNIEnv, jclass, [*c]const JNINativeMethod, jint) callconv(.C) jint,
    UnregisterNatives: ?fn ([*c]JNIEnv, jclass) callconv(.C) jint,
    MonitorEnter: ?fn ([*c]JNIEnv, jobject) callconv(.C) jint,
    MonitorExit: ?fn ([*c]JNIEnv, jobject) callconv(.C) jint,
    GetJavaVM: ?fn ([*c]JNIEnv, [*c][*c]JavaVM) callconv(.C) jint,
    GetStringRegion: ?fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]jchar) callconv(.C) void,
    GetStringUTFRegion: ?fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]u8) callconv(.C) void,
    GetPrimitiveArrayCritical: ?fn ([*c]JNIEnv, jarray, [*c]jboolean) callconv(.C) ?*anyopaque,
    ReleasePrimitiveArrayCritical: ?fn ([*c]JNIEnv, jarray, ?*anyopaque, jint) callconv(.C) void,
    GetStringCritical: ?fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar,
    ReleaseStringCritical: ?fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void,
    NewWeakGlobalRef: ?fn ([*c]JNIEnv, jobject) callconv(.C) jweak,
    DeleteWeakGlobalRef: ?fn ([*c]JNIEnv, jweak) callconv(.C) void,
    ExceptionCheck: ?fn ([*c]JNIEnv) callconv(.C) jboolean,
    NewDirectByteBuffer: ?fn ([*c]JNIEnv, ?*anyopaque, jlong) callconv(.C) jobject,
    GetDirectBufferAddress: ?fn ([*c]JNIEnv, jobject) callconv(.C) ?*anyopaque,
    GetDirectBufferCapacity: ?fn ([*c]JNIEnv, jobject) callconv(.C) jlong,
    GetObjectRefType: ?fn ([*c]JNIEnv, jobject) callconv(.C) jobjectRefType,
};
pub const JNIEnv = [*c]const struct_JNINativeInterface;
pub const struct_JNIInvokeInterface = extern struct {
    reserved0: ?*anyopaque,
    reserved1: ?*anyopaque,
    reserved2: ?*anyopaque,
    DestroyJavaVM: fn (*JavaVM) callconv(.C) jint,
    AttachCurrentThread: fn (*JavaVM, **JNIEnv, ?*anyopaque) callconv(.C) jint,
    DetachCurrentThread: fn (*JavaVM) callconv(.C) jint,
    GetEnv: fn (*JavaVM, *?*anyopaque, jint) callconv(.C) jint,
    AttachCurrentThreadAsDaemon: fn (*JavaVM, **JNIEnv, ?*anyopaque) callconv(.C) jint,
};
pub const JNINativeMethod = extern struct {
    name: [*c]const u8,
    signature: [*c]const u8,
    fnPtr: ?*anyopaque,
};
pub const struct__JNIEnv = extern struct {
    functions: [*c]const struct_JNINativeInterface,
};
pub const struct__JavaVM = extern struct {
    functions: [*c]const struct_JNIInvokeInterface,
};
pub const C_JNIEnv = [*c]const struct_JNINativeInterface;
pub const struct_JavaVMAttachArgs = extern struct {
    version: jint,
    name: [*c]const u8,
    group: jobject,
};
pub const JavaVMAttachArgs = struct_JavaVMAttachArgs;
pub const struct_JavaVMOption = extern struct {
    optionString: [*c]const u8,
    extraInfo: ?*anyopaque,
};
pub const JavaVMOption = struct_JavaVMOption;
pub const struct_JavaVMInitArgs = extern struct {
    version: jint,
    nOptions: jint,
    options: [*c]JavaVMOption,
    ignoreUnrecognized: jboolean,
};
pub const JavaVMInitArgs = struct_JavaVMInitArgs;
pub extern fn JNI_GetDefaultJavaVMInitArgs(?*anyopaque) jint;
pub extern fn JNI_CreateJavaVM([*c][*c]JavaVM, [*c][*c]JNIEnv, ?*anyopaque) jint;
pub extern fn JNI_GetCreatedJavaVMs([*c][*c]JavaVM, jsize, [*c]jsize) jint;
pub extern fn JNI_OnLoad(vm: [*c]JavaVM, reserved: ?*anyopaque) jint;
pub extern fn JNI_OnUnload(vm: [*c]JavaVM, reserved: ?*anyopaque) void;
pub const struct_ovrJava_ = extern struct {
    Vm: *JavaVM,
    Env: *JNIEnv,
    ActivityObject: jobject,
};
pub const ovrJava = struct_ovrJava_;
pub const assert_failed_0 = [1]u8;
pub const assert_failed_1 = [1]u8;
pub const ovrResult = c_int;
pub const ovrSuccess: c_int = 0;
pub const ovrSuccess_BoundaryInvalid: c_int = 1001;
pub const ovrSuccess_EventUnavailable: c_int = 1002;
pub const ovrSuccess_Skipped: c_int = 1003;
pub const enum_ovrSuccessResult_ = c_uint;
pub const ovrSuccessResult = enum_ovrSuccessResult_;
pub const ovrError_MemoryAllocationFailure: c_int = -1000;
pub const ovrError_NotInitialized: c_int = -1004;
pub const ovrError_InvalidParameter: c_int = -1005;
pub const ovrError_DeviceUnavailable: c_int = -1010;
pub const ovrError_InvalidOperation: c_int = -1015;
pub const ovrError_UnsupportedDeviceType: c_int = -1050;
pub const ovrError_NoDevice: c_int = -1051;
pub const ovrError_NotImplemented: c_int = -1052;
pub const ovrError_NotReady: c_int = -1053;
pub const ovrError_Unavailable: c_int = -1054;
pub const ovrResult_EnumSize: c_int = 2147483647;
pub const enum_ovrErrorResult_ = c_int;
pub const ovrErrorResult = enum_ovrErrorResult_;
pub const struct_ovrVector2f_ = extern struct {
    x: f32,
    y: f32,
};
pub const ovrVector2f = struct_ovrVector2f_;
pub const assert_failed_2 = [1]u8;
pub const struct_ovrVector3f_ = extern struct {
    x: f32,
    y: f32,
    z: f32,
};
pub const ovrVector3f = struct_ovrVector3f_;
pub const assert_failed_3 = [1]u8;
pub const struct_ovrVector4f_ = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const ovrVector4f = struct_ovrVector4f_;
pub const assert_failed_4 = [1]u8;
pub const struct_ovrVector4s_ = extern struct {
    x: i16,
    y: i16,
    z: i16,
    w: i16,
};
pub const ovrVector4s = struct_ovrVector4s_;
pub const assert_failed_5 = [1]u8;
pub const struct_ovrQuatf_ = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const ovrQuatf = struct_ovrQuatf_;
pub const assert_failed_6 = [1]u8;
pub const struct_ovrMatrix4f_ = extern struct {
    M: [4][4]f32,
};
pub const ovrMatrix4f = struct_ovrMatrix4f_;
pub const assert_failed_7 = [1]u8;
const union_unnamed_1 = extern union {
    Position: ovrVector3f,
    Translation: ovrVector3f,
};
pub const struct_ovrPosef_ = extern struct {
    Orientation: ovrQuatf,
    unnamed_0: union_unnamed_1,
};
pub const ovrPosef = struct_ovrPosef_;
pub const assert_failed_8 = [1]u8;
pub const struct_ovrRectf_ = extern struct {
    x: f32,
    y: f32,
    width: f32,
    height: f32,
};
pub const ovrRectf = struct_ovrRectf_;
pub const assert_failed_9 = [1]u8;
pub const VRAPI_FALSE: c_int = 0;
pub const VRAPI_TRUE: c_int = 1;
pub const enum_ovrBooleanResult_ = c_uint;
pub const ovrBooleanResult = enum_ovrBooleanResult_;
pub const VRAPI_EYE_LEFT: c_int = 0;
pub const VRAPI_EYE_RIGHT: c_int = 1;
pub const VRAPI_EYE_COUNT: c_int = 2;
pub const enum_ovrEye_ = c_uint;
pub const ovrEye = enum_ovrEye_;
pub const VRAPI_STRUCTURE_TYPE_INIT_PARMS: c_int = 1;
pub const VRAPI_STRUCTURE_TYPE_MODE_PARMS: c_int = 2;
pub const VRAPI_STRUCTURE_TYPE_FRAME_PARMS: c_int = 3;
pub const VRAPI_STRUCTURE_TYPE_MODE_PARMS_VULKAN: c_int = 5;
pub const enum_ovrStructureType_ = c_uint;
pub const ovrStructureType = enum_ovrStructureType_;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST_START: c_int = 256;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST: c_int = 259;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST_END: c_int = 319;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST2_START: c_int = 320;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST2: c_int = 320;
pub const VRAPI_DEVICE_TYPE_OCULUSQUEST2_END: c_int = 383;
pub const VRAPI_DEVICE_TYPE_UNKNOWN: c_int = -1;
pub const enum_ovrDeviceType_ = c_int;
pub const ovrDeviceType = enum_ovrDeviceType_;
pub const VRAPI_DEVICE_REGION_UNSPECIFIED: c_int = 0;
pub const VRAPI_DEVICE_REGION_JAPAN: c_int = 1;
pub const VRAPI_DEVICE_REGION_CHINA: c_int = 2;
pub const enum_ovrDeviceRegion_ = c_uint;
pub const ovrDeviceRegion = enum_ovrDeviceRegion_;
pub const VRAPI_DEVICE_EMULATION_MODE_NONE: c_int = 0;
pub const VRAPI_DEVICE_EMULATION_MODE_GO_ON_QUEST: c_int = 1;
pub const enum_ovrDeviceEmulationMode_ = c_uint;
pub const ovrDeviceEmulationMode = enum_ovrDeviceEmulationMode_;
pub const VRAPI_SYS_PROP_DEVICE_TYPE: c_int = 0;
pub const VRAPI_SYS_PROP_MAX_FULLSPEED_FRAMEBUFFER_SAMPLES: c_int = 1;
pub const VRAPI_SYS_PROP_DISPLAY_PIXELS_WIDE: c_int = 2;
pub const VRAPI_SYS_PROP_DISPLAY_PIXELS_HIGH: c_int = 3;
pub const VRAPI_SYS_PROP_DISPLAY_REFRESH_RATE: c_int = 4;
pub const VRAPI_SYS_PROP_SUGGESTED_EYE_TEXTURE_WIDTH: c_int = 5;
pub const VRAPI_SYS_PROP_SUGGESTED_EYE_TEXTURE_HEIGHT: c_int = 6;
pub const VRAPI_SYS_PROP_SUGGESTED_EYE_FOV_DEGREES_X: c_int = 7;
pub const VRAPI_SYS_PROP_SUGGESTED_EYE_FOV_DEGREES_Y: c_int = 8;
pub const VRAPI_SYS_PROP_DEVICE_REGION: c_int = 10;
pub const VRAPI_SYS_PROP_DOMINANT_HAND: c_int = 15;
pub const VRAPI_SYS_PROP_HAS_ORIENTATION_TRACKING: c_int = 16;
pub const VRAPI_SYS_PROP_HAS_POSITION_TRACKING: c_int = 17;
pub const VRAPI_SYS_PROP_NUM_SUPPORTED_DISPLAY_REFRESH_RATES: c_int = 64;
pub const VRAPI_SYS_PROP_SUPPORTED_DISPLAY_REFRESH_RATES: c_int = 65;
pub const VRAPI_SYS_PROP_NUM_SUPPORTED_SWAPCHAIN_FORMATS: c_int = 66;
pub const VRAPI_SYS_PROP_SUPPORTED_SWAPCHAIN_FORMATS: c_int = 67;
pub const VRAPI_SYS_PROP_FOVEATION_AVAILABLE: c_int = 130;
pub const enum_ovrSystemProperty_ = c_uint;
pub const ovrSystemProperty = enum_ovrSystemProperty_;
pub const VRAPI_FOVEATION_LEVEL: c_int = 15;
pub const VRAPI_EAT_NATIVE_GAMEPAD_EVENTS: c_int = 20;
pub const VRAPI_ACTIVE_INPUT_DEVICE_ID: c_int = 24;
pub const VRAPI_DEVICE_EMULATION_MODE: c_int = 29;
pub const VRAPI_DYNAMIC_FOVEATION_ENABLED: c_int = 30;
pub const enum_ovrProperty_ = c_uint;
pub const ovrProperty = enum_ovrProperty_;
pub const VRAPI_SYS_STATUS_MOUNTED: c_int = 1;
pub const VRAPI_SYS_STATUS_THROTTLED: c_int = 2;
pub const VRAPI_SYS_STATUS_RENDER_LATENCY_MILLISECONDS: c_int = 5;
pub const VRAPI_SYS_STATUS_TIMEWARP_LATENCY_MILLISECONDS: c_int = 6;
pub const VRAPI_SYS_STATUS_SCANOUT_LATENCY_MILLISECONDS: c_int = 7;
pub const VRAPI_SYS_STATUS_APP_FRAMES_PER_SECOND: c_int = 8;
pub const VRAPI_SYS_STATUS_SCREEN_TEARS_PER_SECOND: c_int = 9;
pub const VRAPI_SYS_STATUS_EARLY_FRAMES_PER_SECOND: c_int = 10;
pub const VRAPI_SYS_STATUS_STALE_FRAMES_PER_SECOND: c_int = 11;
pub const VRAPI_SYS_STATUS_RECENTER_COUNT: c_int = 13;
pub const VRAPI_SYS_STATUS_USER_RECENTER_COUNT: c_int = 15;
pub const VRAPI_SYS_STATUS_FRONT_BUFFER_SRGB: c_int = 130;
pub const VRAPI_SYS_STATUS_SCREEN_CAPTURE_RUNNING: c_int = 131;
pub const enum_ovrSystemStatus_ = c_uint;
pub const ovrSystemStatus = enum_ovrSystemStatus_;
pub const VRAPI_INITIALIZE_SUCCESS: c_int = 0;
pub const VRAPI_INITIALIZE_UNKNOWN_ERROR: c_int = -1;
pub const VRAPI_INITIALIZE_PERMISSIONS_ERROR: c_int = -2;
pub const VRAPI_INITIALIZE_ALREADY_INITIALIZED: c_int = -3;
pub const VRAPI_INITIALIZE_SERVICE_CONNECTION_FAILED: c_int = -4;
pub const VRAPI_INITIALIZE_DEVICE_NOT_SUPPORTED: c_int = -5;
pub const enum_ovrInitializeStatus_ = c_int;
pub const ovrInitializeStatus = enum_ovrInitializeStatus_;
pub const VRAPI_GRAPHICS_API_TYPE_OPENGL_ES: c_int = 65536;
pub const VRAPI_GRAPHICS_API_OPENGL_ES_2: c_int = 66048;
pub const VRAPI_GRAPHICS_API_OPENGL_ES_3: c_int = 66304;
pub const VRAPI_GRAPHICS_API_TYPE_OPENGL: c_int = 131072;
pub const VRAPI_GRAPHICS_API_OPENGL_COMPAT: c_int = 131328;
pub const VRAPI_GRAPHICS_API_OPENGL_CORE_3: c_int = 131840;
pub const VRAPI_GRAPHICS_API_OPENGL_CORE_4: c_int = 132096;
pub const VRAPI_GRAPHICS_API_TYPE_VULKAN: c_int = 262144;
pub const VRAPI_GRAPHICS_API_VULKAN_1: c_int = 262400;
pub const enum_ovrGraphicsAPI_ = c_uint;
pub const ovrGraphicsAPI = enum_ovrGraphicsAPI_;
pub const struct_ovrInitParms_ = extern struct {
    Type: ovrStructureType,
    ProductVersion: c_int,
    MajorVersion: c_int,
    MinorVersion: c_int,
    PatchVersion: c_int,
    GraphicsAPI: ovrGraphicsAPI,
    Java: ovrJava,
};
pub const ovrInitParms = struct_ovrInitParms_;
pub const assert_failed_10 = [1]u8;
pub const assert_failed_11 = [1]u8;
pub const VRAPI_MODE_FLAG_RESET_WINDOW_FULLSCREEN: c_int = 65280;
pub const VRAPI_MODE_FLAG_NATIVE_WINDOW: c_int = 65536;
pub const VRAPI_MODE_FLAG_FRONT_BUFFER_SRGB: c_int = 524288;
pub const VRAPI_MODE_FLAG_PHASE_SYNC: c_int = 4194304;
pub const enum_ovrModeFlags_ = c_uint;
pub const ovrModeFlags = enum_ovrModeFlags_;
pub const struct_ovrModeParms_ = extern struct {
    Type: ovrStructureType,
    Flags: c_uint,
    Java: ovrJava,
    Display: c_ulonglong,
    WindowSurface: c_ulonglong,
    ShareContext: c_ulonglong,
};
pub const ovrModeParms = struct_ovrModeParms_;
pub const assert_failed_12 = [1]u8;
pub const assert_failed_13 = [1]u8;
pub const struct_ovrModeParmsVulkan_ = extern struct {
    ModeParms: ovrModeParms,
    SynchronizationQueue: c_ulonglong,
};
pub const ovrModeParmsVulkan = struct_ovrModeParmsVulkan_;
pub const assert_failed_14 = [1]u8;
pub const assert_failed_15 = [1]u8;
pub const struct_ovrMobile = opaque {};
pub const ovrMobile = struct_ovrMobile;
pub const struct_ovrRigidBodyPosef_ = extern struct {
    Pose: ovrPosef,
    AngularVelocity: ovrVector3f,
    LinearVelocity: ovrVector3f,
    AngularAcceleration: ovrVector3f,
    LinearAcceleration: ovrVector3f,
    dead16: [4]u8,
    TimeInSeconds: f64,
    PredictionInSeconds: f64,
};
pub const ovrRigidBodyPosef = struct_ovrRigidBodyPosef_;
pub const assert_failed_17 = [1]u8;
pub const VRAPI_TRACKING_STATUS_ORIENTATION_TRACKED: c_int = 1;
pub const VRAPI_TRACKING_STATUS_POSITION_TRACKED: c_int = 2;
pub const VRAPI_TRACKING_STATUS_ORIENTATION_VALID: c_int = 4;
pub const VRAPI_TRACKING_STATUS_POSITION_VALID: c_int = 8;
pub const VRAPI_TRACKING_STATUS_HMD_CONNECTED: c_int = 128;
pub const enum_ovrTrackingStatus_ = c_uint;
pub const ovrTrackingStatus = enum_ovrTrackingStatus_;
const struct_unnamed_2 = extern struct {
    ProjectionMatrix: ovrMatrix4f,
    ViewMatrix: ovrMatrix4f,
};
pub const struct_ovrTracking2_ = extern struct {
    Status: c_uint,
    dead18: [4]u8,
    HeadPose: ovrRigidBodyPosef,
    Eye: [2]struct_unnamed_2,
};
pub const ovrTracking2 = struct_ovrTracking2_;
pub const assert_failed_19 = [1]u8;
pub const struct_ovrTracking_ = extern struct {
    Status: c_uint,
    dead20: [4]u8,
    HeadPose: ovrRigidBodyPosef,
};
pub const ovrTracking = struct_ovrTracking_;
pub const assert_failed_21 = [1]u8;
pub const VRAPI_TRACKING_TRANSFORM_IDENTITY: c_int = 0;
pub const VRAPI_TRACKING_TRANSFORM_CURRENT: c_int = 1;
pub const VRAPI_TRACKING_TRANSFORM_SYSTEM_CENTER_EYE_LEVEL: c_int = 2;
pub const VRAPI_TRACKING_TRANSFORM_SYSTEM_CENTER_FLOOR_LEVEL: c_int = 3;
pub const enum_ovrTrackingTransform_ = c_uint;
pub const ovrTrackingTransform = enum_ovrTrackingTransform_;
pub const VRAPI_TRACKING_SPACE_LOCAL: c_int = 0;
pub const VRAPI_TRACKING_SPACE_LOCAL_FLOOR: c_int = 1;
pub const VRAPI_TRACKING_SPACE_LOCAL_TILTED: c_int = 2;
pub const VRAPI_TRACKING_SPACE_STAGE: c_int = 3;
pub const VRAPI_TRACKING_SPACE_LOCAL_FIXED_YAW: c_int = 7;
pub const enum_ovrTrackingSpace_ = c_uint;
pub const ovrTrackingSpace = enum_ovrTrackingSpace_;
pub const VRAPI_TRACKED_DEVICE_NONE: c_int = -1;
pub const VRAPI_TRACKED_DEVICE_HMD: c_int = 0;
pub const VRAPI_TRACKED_DEVICE_HAND_LEFT: c_int = 1;
pub const VRAPI_TRACKED_DEVICE_HAND_RIGHT: c_int = 2;
pub const VRAPI_NUM_TRACKED_DEVICES: c_int = 3;
pub const enum_ovrTrackedDeviceTypeId_ = c_int;
pub const ovrTrackedDeviceTypeId = enum_ovrTrackedDeviceTypeId_;
pub const struct_ovrBoundaryTriggerResult_ = extern struct {
    ClosestPoint: ovrVector3f,
    ClosestPointNormal: ovrVector3f,
    ClosestDistance: f32,
    IsTriggering: bool,
};
pub const ovrBoundaryTriggerResult = struct_ovrBoundaryTriggerResult_;
pub const assert_failed_22 = [1]u8;
pub const VRAPI_TEXTURE_TYPE_2D: c_int = 0;
pub const VRAPI_TEXTURE_TYPE_2D_ARRAY: c_int = 2;
pub const VRAPI_TEXTURE_TYPE_CUBE: c_int = 3;
pub const VRAPI_TEXTURE_TYPE_MAX: c_int = 4;
pub const enum_ovrTextureType_ = c_uint;
pub const ovrTextureType = enum_ovrTextureType_;
pub const VRAPI_TEXTURE_FORMAT_NONE: c_int = 0;
pub const VRAPI_TEXTURE_FORMAT_565: c_int = 1;
pub const VRAPI_TEXTURE_FORMAT_5551: c_int = 2;
pub const VRAPI_TEXTURE_FORMAT_4444: c_int = 3;
pub const VRAPI_TEXTURE_FORMAT_8888: c_int = 4;
pub const VRAPI_TEXTURE_FORMAT_8888_sRGB: c_int = 5;
pub const VRAPI_TEXTURE_FORMAT_RGBA16F: c_int = 6;
pub const VRAPI_TEXTURE_FORMAT_DEPTH_16: c_int = 7;
pub const VRAPI_TEXTURE_FORMAT_DEPTH_24: c_int = 8;
pub const VRAPI_TEXTURE_FORMAT_DEPTH_24_STENCIL_8: c_int = 9;
pub const VRAPI_TEXTURE_FORMAT_RG16: c_int = 10;
pub const enum_ovrTextureFormat_ = c_uint;
pub const ovrTextureFormat = enum_ovrTextureFormat_;
pub const VRAPI_TEXTURE_FILTER_NEAREST: c_int = 0;
pub const VRAPI_TEXTURE_FILTER_LINEAR: c_int = 1;
pub const VRAPI_TEXTURE_FILTER_NEAREST_MIPMAP_LINEAR: c_int = 2;
pub const VRAPI_TEXTURE_FILTER_LINEAR_MIPMAP_NEAREST: c_int = 3;
pub const VRAPI_TEXTURE_FILTER_LINEAR_MIPMAP_LINEAR: c_int = 4;
pub const VRAPI_TEXTURE_FILTER_CUBIC: c_int = 5;
pub const VRAPI_TEXTURE_FILTER_CUBIC_MIPMAP_NEAREST: c_int = 6;
pub const VRAPI_TEXTURE_FILTER_CUBIC_MIPMAP_LINEAR: c_int = 7;
pub const enum_ovrTextureFilter_ = c_uint;
pub const ovrTextureFilter = enum_ovrTextureFilter_;
pub const VRAPI_TEXTURE_WRAP_MODE_REPEAT: c_int = 0;
pub const VRAPI_TEXTURE_WRAP_MODE_CLAMP_TO_EDGE: c_int = 1;
pub const VRAPI_TEXTURE_WRAP_MODE_CLAMP_TO_BORDER: c_int = 2;
pub const enum_ovrTextureWrapMode_ = c_uint;
pub const ovrTextureWrapMode = enum_ovrTextureWrapMode_;
pub const struct_ovrTextureSamplerState_ = extern struct {
    MinFilter: ovrTextureFilter,
    MagFilter: ovrTextureFilter,
    WrapModeS: ovrTextureWrapMode,
    WrapModeT: ovrTextureWrapMode,
    BorderColor: [4]f32,
    MaxAnisotropy: f32,
};
pub const ovrTextureSamplerState = struct_ovrTextureSamplerState_;
pub const assert_failed_23 = [1]u8;
pub const VRAPI_ANDROID_SURFACE_SWAP_CHAIN_FLAG_PROTECTED: c_int = 1;
pub const VRAPI_ANDROID_SURFACE_SWAP_CHAIN_FLAG_SYNCHRONOUS: c_int = 2;
pub const VRAPI_ANDROID_SURFACE_SWAP_CHAIN_FLAG_USE_TIMESTAMPS: c_int = 4;
pub const enum_ovrAndroidSurfaceSwapChainFlags_ = c_uint;
pub const ovrAndroidSurfaceSwapChainFlags = enum_ovrAndroidSurfaceSwapChainFlags_;
pub const VRAPI_DEFAULT_TEXTURE_SWAPCHAIN: c_int = 1;
pub const VRAPI_DEFAULT_TEXTURE_SWAPCHAIN_LOADING_ICON: c_int = 2;
pub const enum_ovrDefaultTextureSwapChain_ = c_uint;
pub const ovrDefaultTextureSwapChain = enum_ovrDefaultTextureSwapChain_;
pub const struct_ovrTextureSwapChain = opaque {};
pub const ovrTextureSwapChain = struct_ovrTextureSwapChain;
pub const VRAPI_SWAPCHAIN_CREATE_SUBSAMPLED_BIT: c_int = 1;
pub const enum_ovrSwapChainCreateFlags_ = c_uint;
pub const ovrSwapChainCreateFlags = enum_ovrSwapChainCreateFlags_;
pub const VRAPI_SWAPCHAIN_USAGE_COLOR_ATTACHMENT_BIT: c_int = 1;
pub const VRAPI_SWAPCHAIN_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT: c_int = 2;
pub const enum_ovrSwapChainUsageFlags_ = c_uint;
pub const ovrSwapChainUsageFlags = enum_ovrSwapChainUsageFlags_;
pub const struct_ovrSwapChainCreateInfo_ = extern struct {
    Format: i64,
    Width: c_int,
    Height: c_int,
    Levels: c_int,
    FaceCount: c_int,
    ArraySize: c_int,
    BufferCount: c_int,
    CreateFlags: u64,
    UsageFlags: u64,
};
pub const ovrSwapChainCreateInfo = struct_ovrSwapChainCreateInfo_;
pub const assert_failed_24 = [1]u8;
pub const assert_failed_25 = [1]u8;
pub const VRAPI_FRAME_FLAG_FLUSH: c_int = 2;
pub const VRAPI_FRAME_FLAG_FINAL: c_int = 4;
pub const VRAPI_FRAME_FLAG_INHIBIT_VOLUME_LAYER: c_int = 64;
pub const enum_ovrFrameFlags_ = c_uint;
pub const ovrFrameFlags = enum_ovrFrameFlags_;
pub const VRAPI_FRAME_LAYER_FLAG_CHROMATIC_ABERRATION_CORRECTION: c_int = 2;
pub const VRAPI_FRAME_LAYER_FLAG_FIXED_TO_VIEW: c_int = 4;
pub const VRAPI_FRAME_LAYER_FLAG_SPIN: c_int = 8;
pub const VRAPI_FRAME_LAYER_FLAG_CLIP_TO_TEXTURE_RECT: c_int = 16;
pub const VRAPI_FRAME_LAYER_FLAG_INHIBIT_SRGB_FRAMEBUFFER: c_int = 256;
pub const VRAPI_FRAME_LAYER_FLAG_FILTER_EXPENSIVE: c_int = 524288;
pub const enum_ovrFrameLayerFlags_ = c_uint;
pub const ovrFrameLayerFlags = enum_ovrFrameLayerFlags_;
pub const VRAPI_FRAME_LAYER_EYE_LEFT: c_int = 0;
pub const VRAPI_FRAME_LAYER_EYE_RIGHT: c_int = 1;
pub const VRAPI_FRAME_LAYER_EYE_MAX: c_int = 2;
pub const enum_ovrFrameLayerEye_ = c_uint;
pub const ovrFrameLayerEye = enum_ovrFrameLayerEye_;
pub const VRAPI_FRAME_LAYER_BLEND_ZERO: c_int = 0;
pub const VRAPI_FRAME_LAYER_BLEND_ONE: c_int = 1;
pub const VRAPI_FRAME_LAYER_BLEND_SRC_ALPHA: c_int = 2;
pub const VRAPI_FRAME_LAYER_BLEND_ONE_MINUS_SRC_ALPHA: c_int = 5;
pub const enum_ovrFrameLayerBlend_ = c_uint;
pub const ovrFrameLayerBlend = enum_ovrFrameLayerBlend_;
pub const VRAPI_EXTRA_LATENCY_MODE_OFF: c_int = 0;
pub const VRAPI_EXTRA_LATENCY_MODE_ON: c_int = 1;
pub const VRAPI_EXTRA_LATENCY_MODE_DYNAMIC: c_int = 2;
pub const enum_ovrExtraLatencyMode_ = c_uint;
pub const ovrExtraLatencyMode = enum_ovrExtraLatencyMode_;
pub const VRAPI_FRAME_LAYER_TYPE_MAX: c_int = 4;
pub const enum_ovrFrameLayerType_ = c_uint;
pub const ovrFrameLayerType = enum_ovrFrameLayerType_;
pub const struct_ovrFrameLayerTexture_ = extern struct {
    ColorTextureSwapChain: ?*ovrTextureSwapChain,
    DepthTextureSwapChain: ?*ovrTextureSwapChain,
    TextureSwapChainIndex: c_int,
    TexCoordsFromTanAngles: ovrMatrix4f,
    TextureRect: ovrRectf,
    dead26: [4]u8,
    HeadPose: ovrRigidBodyPosef,
    Pad: [8]u8,
};
pub const ovrFrameLayerTexture = struct_ovrFrameLayerTexture_;
pub const assert_failed_27 = [1]u8;
pub const assert_failed_28 = [1]u8;
pub const struct_ovrFrameLayer_ = extern struct {
    Textures: [2]ovrFrameLayerTexture,
    SpinSpeed: f32,
    SpinScale: f32,
    ColorScale: f32,
    dead29: [4]u8,
    SrcBlend: ovrFrameLayerBlend,
    DstBlend: ovrFrameLayerBlend,
    Flags: c_int,
};
pub const ovrFrameLayer = struct_ovrFrameLayer_;
pub const assert_failed_30 = [1]u8;
pub const assert_failed_31 = [1]u8;
pub const struct_ovrPerformanceParms_ = extern struct {
    CpuLevel: c_int,
    GpuLevel: c_int,
    MainThreadTid: c_int,
    RenderThreadTid: c_int,
};
pub const ovrPerformanceParms = struct_ovrPerformanceParms_;
pub const assert_failed_32 = [1]u8;
pub const struct_ovrFrameParms_ = extern struct {
    Type: ovrStructureType,
    dead33: [4]u8,
    Layers: [4]ovrFrameLayer,
    LayerCount: c_int,
    Flags: c_int,
    FrameIndex: c_longlong,
    SwapInterval: c_int,
    ExtraLatencyMode: ovrExtraLatencyMode,
    Reserved: ovrMatrix4f,
    Reserved1: ?*anyopaque,
    PerformanceParms: ovrPerformanceParms,
    Java: ovrJava,
};
pub const ovrFrameParms = struct_ovrFrameParms_;
pub const ovrMaxLayerCount: c_int = 16;
const enum_unnamed_3 = c_uint;
pub const VRAPI_LAYER_TYPE_PROJECTION2: c_int = 1;
pub const VRAPI_LAYER_TYPE_CYLINDER2: c_int = 3;
pub const VRAPI_LAYER_TYPE_CUBE2: c_int = 4;
pub const VRAPI_LAYER_TYPE_EQUIRECT2: c_int = 5;
pub const VRAPI_LAYER_TYPE_LOADING_ICON2: c_int = 6;
pub const VRAPI_LAYER_TYPE_FISHEYE2: c_int = 7;
pub const VRAPI_LAYER_TYPE_EQUIRECT3: c_int = 10;
pub const enum_ovrLayerType2_ = c_uint;
pub const ovrLayerType2 = enum_ovrLayerType2_;
pub const struct_ovrLayerHeader2_ = extern struct {
    Type: ovrLayerType2,
    Flags: u32,
    ColorScale: ovrVector4f,
    SrcBlend: ovrFrameLayerBlend,
    DstBlend: ovrFrameLayerBlend,
    Reserved: ?*anyopaque,
};
pub const ovrLayerHeader2 = struct_ovrLayerHeader2_;
pub const assert_failed_34 = [1]u8;
pub const assert_failed_35 = [1]u8;
const struct_unnamed_4 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
    TexCoordsFromTanAngles: ovrMatrix4f,
    TextureRect: ovrRectf,
};
pub const struct_ovrLayerProjection2_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    Textures: [2]struct_unnamed_4,
};
pub const ovrLayerProjection2 = struct_ovrLayerProjection2_;
pub const assert_failed_36 = [1]u8;
pub const assert_failed_37 = [1]u8;
const struct_unnamed_5 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
    TexCoordsFromTanAngles: ovrMatrix4f,
    TextureRect: ovrRectf,
    TextureMatrix: ovrMatrix4f,
};
pub const struct_ovrLayerCylinder2_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    Textures: [2]struct_unnamed_5,
};
pub const ovrLayerCylinder2 = struct_ovrLayerCylinder2_;
pub const assert_failed_38 = [1]u8;
pub const assert_failed_39 = [1]u8;
const struct_unnamed_6 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
};
pub const struct_ovrLayerCube2_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    TexCoordsFromTanAngles: ovrMatrix4f,
    Offset: ovrVector3f,
    Textures: [2]struct_unnamed_6,
};
pub const ovrLayerCube2 = struct_ovrLayerCube2_;
pub const assert_failed_40 = [1]u8;
pub const assert_failed_41 = [1]u8;
const struct_unnamed_7 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
    TextureRect: ovrRectf,
    TextureMatrix: ovrMatrix4f,
};
pub const struct_ovrLayerEquirect2_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    TexCoordsFromTanAngles: ovrMatrix4f,
    Textures: [2]struct_unnamed_7,
};
pub const ovrLayerEquirect2 = struct_ovrLayerEquirect2_;
pub const assert_failed_42 = [1]u8;
pub const assert_failed_43 = [1]u8;
const struct_unnamed_8 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
    TexCoordsFromTanAngles: ovrMatrix4f,
    TextureRect: ovrRectf,
    TextureMatrix: ovrMatrix4f,
};
pub const struct_ovrLayerEquirect3_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    Textures: [2]struct_unnamed_8,
};
pub const ovrLayerEquirect3 = struct_ovrLayerEquirect3_;
pub const assert_failed_44 = [1]u8;
pub const assert_failed_45 = [1]u8;
pub const struct_ovrLayerLoadingIcon2_ = extern struct {
    Header: ovrLayerHeader2,
    SpinSpeed: f32,
    SpinScale: f32,
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
};
pub const ovrLayerLoadingIcon2 = struct_ovrLayerLoadingIcon2_;
pub const assert_failed_46 = [1]u8;
pub const assert_failed_47 = [1]u8;
const struct_unnamed_9 = extern struct {
    ColorSwapChain: ?*ovrTextureSwapChain,
    SwapChainIndex: c_int,
    LensFromTanAngles: ovrMatrix4f,
    TextureRect: ovrRectf,
    TextureMatrix: ovrMatrix4f,
    Distortion: ovrVector4f,
};
pub const struct_ovrLayerFishEye2_ = extern struct {
    Header: ovrLayerHeader2,
    HeadPose: ovrRigidBodyPosef,
    Textures: [2]struct_unnamed_9,
};
pub const ovrLayerFishEye2 = struct_ovrLayerFishEye2_;
pub const assert_failed_48 = [1]u8;
pub const assert_failed_49 = [1]u8;
pub const union_ovrLayer_Union2_ = extern union {
    Header: ovrLayerHeader2,
    Projection: ovrLayerProjection2,
    Cylinder: ovrLayerCylinder2,
    Cube: ovrLayerCube2,
    Equirect: ovrLayerEquirect2,
    Equirect3: ovrLayerEquirect3,
    LoadingIcon: ovrLayerLoadingIcon2,
    FishEye: ovrLayerFishEye2,
};
pub const ovrLayer_Union2 = union_ovrLayer_Union2_;
pub const struct_ovrSubmitFrameDescription2_ = extern struct {
    Flags: u32,
    SwapInterval: u32,
    FrameIndex: u64,
    DisplayTime: f64,
    Pad: [8]u8,
    LayerCount: u32,
    Layers: [*c]const [*c]const ovrLayerHeader2,
};
pub const ovrSubmitFrameDescription2 = struct_ovrSubmitFrameDescription2_;
pub const assert_failed_50 = [1]u8;
pub const assert_failed_51 = [1]u8;
pub const VRAPI_PERF_THREAD_TYPE_MAIN: c_int = 0;
pub const VRAPI_PERF_THREAD_TYPE_RENDERER: c_int = 1;
pub const enum_ovrPerfThreadType_ = c_uint;
pub const ovrPerfThreadType = enum_ovrPerfThreadType_;
pub const VRAPI_COLORSPACE_UNMANAGED: c_int = 0;
pub const VRAPI_COLORSPACE_REC_2020: c_int = 1;
pub const VRAPI_COLORSPACE_REC_709: c_int = 2;
pub const VRAPI_COLORSPACE_RIFT_CV1: c_int = 3;
pub const VRAPI_COLORSPACE_RIFT_S: c_int = 4;
pub const VRAPI_COLORSPACE_QUEST: c_int = 5;
pub const VRAPI_COLORSPACE_P3: c_int = 6;
pub const VRAPI_COLORSPACE_ADOBE_RGB: c_int = 7;
pub const enum_ovrColorSpace_ = c_uint;
pub const ovrColorSpace = enum_ovrColorSpace_;
pub const struct_ovrHmdColorDesc_ = extern struct {
    ColorSpace: ovrColorSpace,
    dead52: [4]u8,
};
pub const ovrHmdColorDesc = struct_ovrHmdColorDesc_;
pub const VRAPI_EVENT_NONE: c_int = 0;
pub const VRAPI_EVENT_DATA_LOST: c_int = 1;
pub const VRAPI_EVENT_VISIBILITY_GAINED: c_int = 2;
pub const VRAPI_EVENT_VISIBILITY_LOST: c_int = 3;
pub const VRAPI_EVENT_FOCUS_GAINED: c_int = 4;
pub const VRAPI_EVENT_FOCUS_LOST: c_int = 5;
pub const VRAPI_EVENT_DISPLAY_REFRESH_RATE_CHANGE: c_int = 11;
pub const enum_ovrEventType_ = c_uint;
pub const ovrEventType = enum_ovrEventType_;
pub const struct_ovrEventHeader_ = extern struct {
    EventType: ovrEventType,
};
pub const ovrEventHeader = struct_ovrEventHeader_;
pub const struct_ovrEventDataLost_ = extern struct {
    EventHeader: ovrEventHeader,
};
pub const ovrEventDataLost = struct_ovrEventDataLost_;
pub const struct_ovrEventVisibilityGained_ = extern struct {
    EventHeader: ovrEventHeader,
};
pub const ovrEventVisibilityGained = struct_ovrEventVisibilityGained_;
pub const struct_ovrEventVisibilityLost_ = extern struct {
    EventHeader: ovrEventHeader,
};
pub const ovrEventVisibilityLost = struct_ovrEventVisibilityLost_;
pub const struct_ovrEventFocusGained_ = extern struct {
    EventHeader: ovrEventHeader,
};
pub const ovrEventFocusGained = struct_ovrEventFocusGained_;
pub const struct_ovrEventFocusLost_ = extern struct {
    EventHeader: ovrEventHeader,
};
pub const ovrEventFocusLost = struct_ovrEventFocusLost_;
pub const struct_ovrEventDisplayRefreshRateChange_ = extern struct {
    EventHeader: ovrEventHeader,
    fromDisplayRefreshRate: f32,
    toDisplayRefreshRate: f32,
};
pub const ovrEventDisplayRefreshRateChange = struct_ovrEventDisplayRefreshRateChange_;
pub const struct_ovrEventDataBuffer_ = extern struct {
    EventHeader: ovrEventHeader,
    EventData: [4000]u8,
};
pub const ovrEventDataBuffer = struct_ovrEventDataBuffer_;
pub const VRAPI_MAX_EVENT_SIZE: c_int = 4004;
pub const enum_ovrEventSize_ = c_uint;
pub const ovrEventSize = enum_ovrEventSize_;
pub extern fn vrapi_GetVersionString(...) [*c]const u8;
pub extern fn vrapi_GetTimeInSeconds(...) f64;
pub extern fn vrapi_Initialize(initParms: [*c]const ovrInitParms) ovrInitializeStatus;
pub extern fn vrapi_Shutdown(...) void;
pub extern fn vrapi_SetPropertyInt(java: [*c]const ovrJava, propType: ovrProperty, intVal: c_int) void;
pub extern fn vrapi_SetPropertyFloat(java: [*c]const ovrJava, propType: ovrProperty, floatVal: f32) void;
pub extern fn vrapi_GetPropertyInt(java: [*c]const ovrJava, propType: ovrProperty, intVal: [*c]c_int) bool;
pub extern fn vrapi_GetSystemPropertyInt(java: [*c]const ovrJava, propType: ovrSystemProperty) c_int;
pub extern fn vrapi_GetSystemPropertyFloat(java: [*c]const ovrJava, propType: ovrSystemProperty) f32;
pub extern fn vrapi_GetSystemPropertyFloatArray(java: [*c]const ovrJava, propType: ovrSystemProperty, values: [*c]f32, numArrayValues: c_int) c_int;
pub extern fn vrapi_GetSystemPropertyInt64Array(java: [*c]const ovrJava, propType: ovrSystemProperty, values: [*c]i64, numArrayValues: c_int) c_int;
pub extern fn vrapi_GetSystemPropertyString(java: [*c]const ovrJava, propType: ovrSystemProperty) [*c]const u8;
pub extern fn vrapi_GetSystemStatusInt(java: [*c]const ovrJava, statusType: ovrSystemStatus) c_int;
pub extern fn vrapi_GetSystemStatusFloat(java: [*c]const ovrJava, statusType: ovrSystemStatus) f32;
pub extern fn vrapi_EnterVrMode(parms: [*c]const ovrModeParms) ?*ovrMobile;
pub extern fn vrapi_LeaveVrMode(ovr: ?*ovrMobile) void;
pub extern fn vrapi_GetPredictedDisplayTime(ovr: ?*ovrMobile, frameIndex: c_longlong) f64;
pub extern fn vrapi_GetPredictedTracking2(ovr: ?*ovrMobile, absTimeInSeconds: f64) ovrTracking2;
pub extern fn vrapi_GetPredictedTracking(ovr: ?*ovrMobile, absTimeInSeconds: f64) ovrTracking;
pub extern fn vrapi_RecenterPose(ovr: ?*ovrMobile) void;
pub extern fn vrapi_GetTrackingTransform(ovr: ?*ovrMobile, whichTransform: ovrTrackingTransform) ovrPosef;
pub extern fn vrapi_SetTrackingTransform(ovr: ?*ovrMobile, pose: ovrPosef) void;
pub extern fn vrapi_GetTrackingSpace(ovr: ?*ovrMobile) ovrTrackingSpace;
pub extern fn vrapi_SetTrackingSpace(ovr: ?*ovrMobile, whichSpace: ovrTrackingSpace) ovrResult;
pub extern fn vrapi_LocateTrackingSpace(ovr: ?*ovrMobile, target: ovrTrackingSpace) ovrPosef;
pub extern fn vrapi_GetBoundaryGeometry(ovr: ?*ovrMobile, pointsCountInput: u32, pointsCountOutput: [*c]u32, points: [*c]ovrVector3f) ovrResult;
pub extern fn vrapi_GetBoundaryOrientedBoundingBox(ovr: ?*ovrMobile, pose: [*c]ovrPosef, scale: [*c]ovrVector3f) ovrResult;
pub extern fn vrapi_TestPointIsInBoundary(ovr: ?*ovrMobile, point: ovrVector3f, pointInsideBoundary: [*c]bool, result: [*c]ovrBoundaryTriggerResult) ovrResult;
pub extern fn vrapi_GetBoundaryTriggerState(ovr: ?*ovrMobile, deviceId: ovrTrackedDeviceTypeId, result: [*c]ovrBoundaryTriggerResult) ovrResult;
pub extern fn vrapi_RequestBoundaryVisible(ovr: ?*ovrMobile, visible: bool) ovrResult;
pub extern fn vrapi_GetBoundaryVisible(ovr: ?*ovrMobile, visible: [*c]bool) ovrResult;
pub extern fn vrapi_CreateTextureSwapChain4(createInfo: [*c]const ovrSwapChainCreateInfo) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateTextureSwapChain3(@"type": ovrTextureType, format: i64, width: c_int, height: c_int, levels: c_int, bufferCount: c_int) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateTextureSwapChain2(@"type": ovrTextureType, format: ovrTextureFormat, width: c_int, height: c_int, levels: c_int, bufferCount: c_int) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateTextureSwapChain(@"type": ovrTextureType, format: ovrTextureFormat, width: c_int, height: c_int, levels: c_int, buffered: bool) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateAndroidSurfaceSwapChain(width: c_int, height: c_int) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateAndroidSurfaceSwapChain2(width: c_int, height: c_int, isProtected: bool) ?*ovrTextureSwapChain;
pub extern fn vrapi_CreateAndroidSurfaceSwapChain3(width: c_int, height: c_int, flags: u64) ?*ovrTextureSwapChain;
pub extern fn vrapi_DestroyTextureSwapChain(chain: ?*ovrTextureSwapChain) void;
pub extern fn vrapi_GetTextureSwapChainLength(chain: ?*ovrTextureSwapChain) c_int;
pub extern fn vrapi_GetTextureSwapChainHandle(chain: ?*ovrTextureSwapChain, index: c_int) c_uint;
pub extern fn vrapi_GetTextureSwapChainAndroidSurface(chain: ?*ovrTextureSwapChain) jobject;
pub extern fn vrapi_SetTextureSwapChainSamplerState(chain: ?*ovrTextureSwapChain, samplerState: [*c]const ovrTextureSamplerState) ovrResult;
pub extern fn vrapi_GetTextureSwapChainSamplerState(chain: ?*ovrTextureSwapChain, samplerState: [*c]ovrTextureSamplerState) ovrResult;
pub extern fn vrapi_WaitFrame(ovr: ?*ovrMobile, frameIndex: u64) ovrResult;
pub extern fn vrapi_BeginFrame(ovr: ?*ovrMobile, frameIndex: u64) ovrResult;
pub extern fn vrapi_SubmitFrame(ovr: ?*ovrMobile, parms: [*c]const ovrFrameParms) void;
pub extern fn vrapi_SubmitFrame2(ovr: ?*ovrMobile, frameDescription: [*c]const ovrSubmitFrameDescription2) ovrResult;
pub extern fn vrapi_SetClockLevels(ovr: ?*ovrMobile, cpuLevel: i32, gpuLevel: i32) ovrResult;
pub extern fn vrapi_SetPerfThread(ovr: ?*ovrMobile, @"type": ovrPerfThreadType, threadId: u32) ovrResult;
pub extern fn vrapi_SetExtraLatencyMode(ovr: ?*ovrMobile, mode: ovrExtraLatencyMode) ovrResult;
pub extern fn vrapi_GetHmdColorDesc(ovr: ?*ovrMobile) ovrHmdColorDesc;
pub extern fn vrapi_SetClientColorDesc(ovr: ?*ovrMobile, colorDesc: [*c]const ovrHmdColorDesc) ovrResult;
pub extern fn vrapi_SetDisplayRefreshRate(ovr: ?*ovrMobile, refreshRate: f32) ovrResult;
pub extern fn vrapi_PollEvent(event: [*c]ovrEventHeader) ovrResult;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):67:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):73:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):164:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):194:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):312:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):313:9
pub const OVR_VRAPI_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ./../vendor/vr-api/Include/VrApi_Config.h:41:9
pub const OVR_VRAPI_STATIC_ASSERT = @compileError("unable to translate macro: undefined identifier `__COUNTER__`"); // ./../vendor/vr-api/Include/VrApi_Config.h:78:9
pub const OVR_VRAPI_STATIC_ASSERT_ID_EXPANDED = @compileError("unable to translate macro: undefined identifier `assert_failed_`"); // ./../vendor/vr-api/Include/VrApi_Config.h:83:9
pub const OVR_VRAPI_PADDING = @compileError("unable to translate macro: undefined identifier `__COUNTER__`"); // ./../vendor/vr-api/Include/VrApi_Config.h:87:9
pub const OVR_VRAPI_PADDING_ID_EXPANDED = @compileError("unable to translate macro: undefined identifier `dead`"); // ./../vendor/vr-api/Include/VrApi_Config.h:92:9
pub const OVR_VRAPI_PADDING_32_BIT = @compileError("unable to translate C expr: unexpected token .Eof"); // ./../vendor/vr-api/Include/VrApi_Config.h:97:9
pub const OVR_VRAPI_PADDING_64_BIT = @compileError("unable to translate macro: undefined identifier `__COUNTER__`"); // ./../vendor/vr-api/Include/VrApi_Config.h:99:9
pub const __strong_alias = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:49:9
pub const __CONCAT1 = @compileError("unable to translate C expr: unexpected token .HashHash"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:71:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:75:9
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:82:9
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:83:9
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:84:9
pub const __dead = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:85:9
pub const __noreturn = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:86:9
pub const __mallocfunc = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:87:9
pub const __packed = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:88:9
pub const __returns_twice = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:89:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:90:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:91:9
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:93:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:94:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:95:9
pub const __wur = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:128:9
pub const __errorattr = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:130:9
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:131:9
pub const __warnattr_real = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:132:9
pub const __enable_if = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:133:9
pub const __clang_error_if = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:134:9
pub const __clang_warning_if = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:135:9
pub const __warnattr_strict = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:144:11
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:152:9
pub const __COPYRIGHT = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:153:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:154:9
pub const __RCSID = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:155:9
pub const __SCCSID = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:156:9
pub const __RENAME_IF_FILE_OFFSET64 = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:189:11
pub const __pass_object_size_n = @compileError("unable to translate C expr: unexpected token .Eof"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:287:11
pub const __bos_dynamic_check_impl_and = @compileError("unable to translate macro: undefined identifier `__builtin_constant_p`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:300:9
pub const __bos_trivially_ge = @compileError("unable to translate C expr: unexpected token .AngleBracketRightEqual"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:307:9
pub const __bos_trivially_gt = @compileError("unable to translate C expr: unexpected token .AngleBracketRight"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:308:9
pub const __overloadable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:314:9
pub const __LIBC_HIDDEN__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:317:9
pub const __LIBC32_LEGACY_PUBLIC__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:324:9
pub const __RENAME = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:330:9
pub const __size_mul_overflow = @compileError("unable to translate macro: undefined identifier `__builtin_umull_overflow`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/sys/cdefs.h:334:9
pub const __INTRODUCED_IN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:19:9
pub const __DEPRECATED_IN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:20:9
pub const __REMOVED_IN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:21:9
pub const __INTRODUCED_IN_32 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:22:9
pub const __INTRODUCED_IN_64 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:23:9
pub const __INTRODUCED_IN_ARM = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:24:9
pub const __INTRODUCED_IN_X86 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:25:9
pub const __INTRODUCED_IN_MIPS = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:26:9
pub const __VERSIONER_NO_GUARD = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/android/versioning.h:28:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stddef.h:104:9
pub const UINT32_C = @compileError("unable to translate macro: undefined identifier `U`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/stdint.h:128:9
pub const INT64_C = @compileError("unable to translate macro: undefined identifier `L`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/stdint.h:141:11
pub const UINT64_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/stdint.h:142:11
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /nix/store/xzs1rkmaj7cy209832rgkvjm392mi54r-zig-0.9.1/lib/zig/include/stdarg.h:27:9
pub const JNIEXPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/sysroot/usr/include/jni.h:1106:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.1";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver1 = @as(c_int, 1);
pub const __znver1__ = @as(c_int, 1);
pub const __tune_znver1__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const ANDROID = "";
pub const OVR_VrApi_h = "";
pub const OVR_VrApi_Config_h = "";
pub const OVR_VRAPI_EXPORT = "";
pub const OVR_VRAPI_64_BIT = "";
pub inline fn OVR_VRAPI_STATIC_ASSERT_ID(exp: anytype, id: anytype) @TypeOf(OVR_VRAPI_STATIC_ASSERT_ID_EXPANDED(exp, id)) {
    return OVR_VRAPI_STATIC_ASSERT_ID_EXPANDED(exp, id);
}
pub inline fn OVR_VRAPI_PADDING_ID(bytes: anytype, id: anytype) @TypeOf(OVR_VRAPI_PADDING_ID_EXPANDED(bytes, id)) {
    return OVR_VRAPI_PADDING_ID_EXPANDED(bytes, id);
}
pub inline fn OVR_VRAPI_ASSERT_TYPE_SIZE(@"type": anytype, bytes: anytype) @TypeOf(OVR_VRAPI_STATIC_ASSERT(@import("std").zig.c_translation.sizeof(@"type") == bytes)) {
    _ = @"type";
    return OVR_VRAPI_STATIC_ASSERT(@import("std").zig.c_translation.sizeof(@"type") == bytes);
}
pub inline fn OVR_VRAPI_ASSERT_TYPE_SIZE_32_BIT(@"type": anytype, bytes: anytype) @TypeOf(OVR_VRAPI_STATIC_ASSERT(@"true")) {
    _ = @"type";
    _ = bytes;
    return OVR_VRAPI_STATIC_ASSERT(@"true");
}
pub inline fn OVR_VRAPI_ASSERT_TYPE_SIZE_64_BIT(@"type": anytype, bytes: anytype) @TypeOf(OVR_VRAPI_STATIC_ASSERT(@import("std").zig.c_translation.sizeof(@"type") == bytes)) {
    _ = @"type";
    return OVR_VRAPI_STATIC_ASSERT(@import("std").zig.c_translation.sizeof(@"type") == bytes);
}
pub inline fn OVR_VRAPI_ALIGN(value: anytype, boundary: anytype) @TypeOf(((value + boundary) - @as(c_int, 1)) & ~(boundary - @as(c_int, 1))) {
    return ((value + boundary) - @as(c_int, 1)) & ~(boundary - @as(c_int, 1));
}
pub const OVR_VrApi_Version_h = "";
pub const VRAPI_PRODUCT_VERSION = @as(c_int, 1);
pub const VRAPI_MAJOR_VERSION = @as(c_int, 1);
pub const VRAPI_MINOR_VERSION = @as(c_int, 50);
pub const VRAPI_PATCH_VERSION = @as(c_int, 0);
pub const VRAPI_BUILD_VERSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 314801631, .decimal);
pub const VRAPI_BUILD_DESCRIPTION = "Development";
pub const VRAPI_DRIVER_VERSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 314801631, .decimal);
pub const OVR_VrApi_Types_h = "";
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const _STDINT_H = "";
pub const __BIONIC__ = @as(c_int, 1);
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __BIONIC_CAST(_k: anytype, _t: anytype, _v: anytype) @TypeOf(_t(_v)) {
    _ = _k;
    return _t(_v);
}
pub inline fn __BIONIC_ALIGN(__value: anytype, __alignment: anytype) @TypeOf(((__value + __alignment) - @as(c_int, 1)) & ~(__alignment - @as(c_int, 1))) {
    return ((__value + __alignment) - @as(c_int, 1)) & ~(__alignment - @as(c_int, 1));
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    return protos;
}
pub inline fn __CONCAT(x: anytype, y: anytype) @TypeOf(__CONCAT1(x, y)) {
    return __CONCAT1(x, y);
}
pub inline fn ___CONCAT(x: anytype, y: anytype) @TypeOf(__CONCAT(x, y)) {
    return __CONCAT(x, y);
}
pub inline fn ___STRING(x: anytype) @TypeOf(__STRING(x)) {
    return __STRING(x);
}
pub inline fn __predict_true(exp: anytype) @TypeOf(__builtin_expect(exp != @as(c_int, 0), @as(c_int, 1))) {
    return __builtin_expect(exp != @as(c_int, 0), @as(c_int, 1));
}
pub inline fn __predict_false(exp: anytype) @TypeOf(__builtin_expect(exp != @as(c_int, 0), @as(c_int, 0))) {
    return __builtin_expect(exp != @as(c_int, 0), @as(c_int, 0));
}
pub inline fn __RENAME_LDBL(rewrite: anytype, rewrite_api_level: anytype, regular_api_level: anytype) @TypeOf(__INTRODUCED_IN(regular_api_level)) {
    _ = rewrite;
    _ = rewrite_api_level;
    return __INTRODUCED_IN(regular_api_level);
}
pub inline fn __RENAME_STAT64(rewrite: anytype, rewrite_api_level: anytype, regular_api_level: anytype) @TypeOf(__INTRODUCED_IN(regular_api_level)) {
    _ = rewrite;
    _ = rewrite_api_level;
    return __INTRODUCED_IN(regular_api_level);
}
pub const __WORDSIZE = @as(c_int, 64);
pub const __BIONIC_FORTIFY_UNKNOWN_SIZE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub const __bos_level = @as(c_int, 0);
pub inline fn __bosn(s: anytype, n: anytype) @TypeOf(__builtin_object_size(s, n)) {
    return __builtin_object_size(s, n);
}
pub inline fn __bos(s: anytype) @TypeOf(__bosn(s, __bos_level)) {
    return __bosn(s, __bos_level);
}
pub const __pass_object_size = __pass_object_size_n(__bos_level);
pub const __pass_object_size0 = __pass_object_size_n(@as(c_int, 0));
pub inline fn __bos_unevaluated_lt(bos_val: anytype, val: anytype) @TypeOf((bos_val != __BIONIC_FORTIFY_UNKNOWN_SIZE) and (bos_val < val)) {
    return (bos_val != __BIONIC_FORTIFY_UNKNOWN_SIZE) and (bos_val < val);
}
pub inline fn __bos_unevaluated_le(bos_val: anytype, val: anytype) @TypeOf((bos_val != __BIONIC_FORTIFY_UNKNOWN_SIZE) and (bos_val <= val)) {
    return (bos_val != __BIONIC_FORTIFY_UNKNOWN_SIZE) and (bos_val <= val);
}
pub inline fn __bos_dynamic_check_impl(bos_val: anytype, op: anytype, index: anytype) @TypeOf(__bos_dynamic_check_impl_and(bos_val, op, index, @as(c_int, 1))) {
    return __bos_dynamic_check_impl_and(bos_val, op, index, @as(c_int, 1));
}
pub inline fn __unsafe_check_mul_overflow(x: anytype, y: anytype) @TypeOf((__SIZE_TYPE__ - (@as(c_int, 1) / x)) < y) {
    return (__SIZE_TYPE__ - (@as(c_int, 1) / x)) < y;
}
pub const __ANDROID_API_FUTURE__ = @as(c_int, 10000);
pub const __ANDROID_API__ = __ANDROID_API_FUTURE__;
pub const __ANDROID_API_G__ = @as(c_int, 9);
pub const __ANDROID_API_I__ = @as(c_int, 14);
pub const __ANDROID_API_J__ = @as(c_int, 16);
pub const __ANDROID_API_J_MR1__ = @as(c_int, 17);
pub const __ANDROID_API_J_MR2__ = @as(c_int, 18);
pub const __ANDROID_API_K__ = @as(c_int, 19);
pub const __ANDROID_API_L__ = @as(c_int, 21);
pub const __ANDROID_API_L_MR1__ = @as(c_int, 22);
pub const __ANDROID_API_M__ = @as(c_int, 23);
pub const __ANDROID_API_N__ = @as(c_int, 24);
pub const __ANDROID_API_N_MR1__ = @as(c_int, 25);
pub const __ANDROID_API_O__ = @as(c_int, 26);
pub const __ANDROID_API_O_MR1__ = @as(c_int, 27);
pub const __ANDROID_API_P__ = @as(c_int, 28);
pub const __ANDROID_API_Q__ = @as(c_int, 29);
pub const __ANDROID_API_R__ = @as(c_int, 30);
pub const ANDROID_NDK_VERSION_H = "";
pub const __NDK_MAJOR__ = @as(c_int, 21);
pub const __NDK_MINOR__ = @as(c_int, 4);
pub const __NDK_BETA__ = @as(c_int, 0);
pub const __NDK_BUILD__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 7075529, .decimal);
pub const __NDK_CANARY__ = @as(c_int, 0);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __BIT_TYPES_DEFINED__ = "";
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT_LEAST8_C(c: anytype) @TypeOf(INT8_C(c)) {
    return INT8_C(c);
}
pub inline fn INT_FAST8_C(c: anytype) @TypeOf(INT8_C(c)) {
    return INT8_C(c);
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT_LEAST8_C(c: anytype) @TypeOf(UINT8_C(c)) {
    return UINT8_C(c);
}
pub inline fn UINT_FAST8_C(c: anytype) @TypeOf(UINT8_C(c)) {
    return UINT8_C(c);
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT_LEAST16_C(c: anytype) @TypeOf(INT16_C(c)) {
    return INT16_C(c);
}
pub inline fn INT_FAST16_C(c: anytype) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT_LEAST16_C(c: anytype) @TypeOf(UINT16_C(c)) {
    return UINT16_C(c);
}
pub inline fn UINT_FAST16_C(c: anytype) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT_LEAST32_C(c: anytype) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub inline fn INT_FAST32_C(c: anytype) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub inline fn UINT_LEAST32_C(c: anytype) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub inline fn UINT_FAST32_C(c: anytype) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub inline fn INT_LEAST64_C(c: anytype) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub inline fn INT_FAST64_C(c: anytype) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub inline fn UINT_LEAST64_C(c: anytype) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub inline fn UINT_FAST64_C(c: anytype) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub inline fn INTMAX_C(c: anytype) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub inline fn UINTMAX_C(c: anytype) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub inline fn INTPTR_C(c: anytype) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub inline fn UINTPTR_C(c: anytype) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub inline fn PTRDIFF_C(c: anytype) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub const INT8_MIN = -@as(c_int, 128);
pub const INT8_MAX = @as(c_int, 127);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INT64_MIN = INT64_C(-@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT64_MAX = INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT64_MAX = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const WINT_MAX = UINT32_MAX;
pub const WINT_MIN = @as(c_int, 0);
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const LIBNATIVEHELPER_INCLUDE_JNI_JNI_H_ = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const JNIIMPORT = "";
pub const JNICALL = "";
pub const JNI_FALSE = @as(c_int, 0);
pub const JNI_TRUE = @as(c_int, 1);
pub const JNI_VERSION_1_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010001, .hexadecimal);
pub const JNI_VERSION_1_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010002, .hexadecimal);
pub const JNI_VERSION_1_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010004, .hexadecimal);
pub const JNI_VERSION_1_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010006, .hexadecimal);
pub const JNI_OK = @as(c_int, 0);
pub const JNI_ERR = -@as(c_int, 1);
pub const JNI_EDETACHED = -@as(c_int, 2);
pub const JNI_EVERSION = -@as(c_int, 3);
pub const JNI_ENOMEM = -@as(c_int, 4);
pub const JNI_EEXIST = -@as(c_int, 5);
pub const JNI_EINVAL = -@as(c_int, 6);
pub const JNI_COMMIT = @as(c_int, 1);
pub const JNI_ABORT = @as(c_int, 2);
pub const VRAPI_LARGEST_EVENT_TYPE = ovrEventDataBuffer;
pub const __va_list_tag = struct___va_list_tag;
pub const _jfieldID = struct__jfieldID;
pub const _jmethodID = struct__jmethodID;
pub const JNINativeInterface = struct_JNINativeInterface;
pub const JNIInvokeInterface = struct_JNIInvokeInterface;
pub const _JNIEnv = struct__JNIEnv;
pub const _JavaVM = struct__JavaVM;
pub const ovrJava_ = struct_ovrJava_;
pub const ovrSuccessResult_ = enum_ovrSuccessResult_;
pub const ovrErrorResult_ = enum_ovrErrorResult_;
pub const ovrVector2f_ = struct_ovrVector2f_;
pub const ovrVector3f_ = struct_ovrVector3f_;
pub const ovrVector4f_ = struct_ovrVector4f_;
pub const ovrVector4s_ = struct_ovrVector4s_;
pub const ovrQuatf_ = struct_ovrQuatf_;
pub const ovrMatrix4f_ = struct_ovrMatrix4f_;
pub const ovrPosef_ = struct_ovrPosef_;
pub const ovrRectf_ = struct_ovrRectf_;
pub const ovrBooleanResult_ = enum_ovrBooleanResult_;
pub const ovrEye_ = enum_ovrEye_;
pub const ovrStructureType_ = enum_ovrStructureType_;
pub const ovrDeviceType_ = enum_ovrDeviceType_;
pub const ovrDeviceRegion_ = enum_ovrDeviceRegion_;
pub const ovrDeviceEmulationMode_ = enum_ovrDeviceEmulationMode_;
pub const ovrSystemProperty_ = enum_ovrSystemProperty_;
pub const ovrProperty_ = enum_ovrProperty_;
pub const ovrSystemStatus_ = enum_ovrSystemStatus_;
pub const ovrInitializeStatus_ = enum_ovrInitializeStatus_;
pub const ovrGraphicsAPI_ = enum_ovrGraphicsAPI_;
pub const ovrInitParms_ = struct_ovrInitParms_;
pub const ovrModeFlags_ = enum_ovrModeFlags_;
pub const ovrModeParms_ = struct_ovrModeParms_;
pub const ovrModeParmsVulkan_ = struct_ovrModeParmsVulkan_;
pub const ovrRigidBodyPosef_ = struct_ovrRigidBodyPosef_;
pub const ovrTrackingStatus_ = enum_ovrTrackingStatus_;
pub const ovrTracking2_ = struct_ovrTracking2_;
pub const ovrTracking_ = struct_ovrTracking_;
pub const ovrTrackingTransform_ = enum_ovrTrackingTransform_;
pub const ovrTrackingSpace_ = enum_ovrTrackingSpace_;
pub const ovrTrackedDeviceTypeId_ = enum_ovrTrackedDeviceTypeId_;
pub const ovrBoundaryTriggerResult_ = struct_ovrBoundaryTriggerResult_;
pub const ovrTextureType_ = enum_ovrTextureType_;
pub const ovrTextureFormat_ = enum_ovrTextureFormat_;
pub const ovrTextureFilter_ = enum_ovrTextureFilter_;
pub const ovrTextureWrapMode_ = enum_ovrTextureWrapMode_;
pub const ovrTextureSamplerState_ = struct_ovrTextureSamplerState_;
pub const ovrAndroidSurfaceSwapChainFlags_ = enum_ovrAndroidSurfaceSwapChainFlags_;
pub const ovrDefaultTextureSwapChain_ = enum_ovrDefaultTextureSwapChain_;
pub const ovrSwapChainCreateFlags_ = enum_ovrSwapChainCreateFlags_;
pub const ovrSwapChainUsageFlags_ = enum_ovrSwapChainUsageFlags_;
pub const ovrSwapChainCreateInfo_ = struct_ovrSwapChainCreateInfo_;
pub const ovrFrameFlags_ = enum_ovrFrameFlags_;
pub const ovrFrameLayerFlags_ = enum_ovrFrameLayerFlags_;
pub const ovrFrameLayerEye_ = enum_ovrFrameLayerEye_;
pub const ovrFrameLayerBlend_ = enum_ovrFrameLayerBlend_;
pub const ovrExtraLatencyMode_ = enum_ovrExtraLatencyMode_;
pub const ovrFrameLayerType_ = enum_ovrFrameLayerType_;
pub const ovrFrameLayerTexture_ = struct_ovrFrameLayerTexture_;
pub const ovrFrameLayer_ = struct_ovrFrameLayer_;
pub const ovrPerformanceParms_ = struct_ovrPerformanceParms_;
pub const ovrFrameParms_ = struct_ovrFrameParms_;
pub const ovrLayerType2_ = enum_ovrLayerType2_;
pub const ovrLayerHeader2_ = struct_ovrLayerHeader2_;
pub const ovrLayerProjection2_ = struct_ovrLayerProjection2_;
pub const ovrLayerCylinder2_ = struct_ovrLayerCylinder2_;
pub const ovrLayerCube2_ = struct_ovrLayerCube2_;
pub const ovrLayerEquirect2_ = struct_ovrLayerEquirect2_;
pub const ovrLayerEquirect3_ = struct_ovrLayerEquirect3_;
pub const ovrLayerLoadingIcon2_ = struct_ovrLayerLoadingIcon2_;
pub const ovrLayerFishEye2_ = struct_ovrLayerFishEye2_;
pub const ovrLayer_Union2_ = union_ovrLayer_Union2_;
pub const ovrSubmitFrameDescription2_ = struct_ovrSubmitFrameDescription2_;
pub const ovrPerfThreadType_ = enum_ovrPerfThreadType_;
pub const ovrColorSpace_ = enum_ovrColorSpace_;
pub const ovrHmdColorDesc_ = struct_ovrHmdColorDesc_;
pub const ovrEventType_ = enum_ovrEventType_;
pub const ovrEventHeader_ = struct_ovrEventHeader_;
pub const ovrEventDataLost_ = struct_ovrEventDataLost_;
pub const ovrEventVisibilityGained_ = struct_ovrEventVisibilityGained_;
pub const ovrEventVisibilityLost_ = struct_ovrEventVisibilityLost_;
pub const ovrEventFocusGained_ = struct_ovrEventFocusGained_;
pub const ovrEventFocusLost_ = struct_ovrEventFocusLost_;
pub const ovrEventDisplayRefreshRateChange_ = struct_ovrEventDisplayRefreshRateChange_;
pub const ovrEventDataBuffer_ = struct_ovrEventDataBuffer_;
pub const ovrEventSize_ = enum_ovrEventSize_;
