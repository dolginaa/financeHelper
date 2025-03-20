QT_CPU_FEATURES.x86_64 = cx16 sse3 ssse3 sse4.1
QT.global_private.enabled_features = reduce_exports x86intrin sse2 sse3 ssse3 sse4_1 sse4_2 avx f16c avx2 avx512f avx512er avx512cd avx512pf avx512dq avx512bw avx512vl avx512ifma avx512vbmi avx512vbmi2 aesni vaes rdrnd rdseed shani neon localtime_r alloca_h alloca system-zlib dbus gui network printsupport sql testlib widgets xml openssl dlopen relocatable trivial_auto_var_init_pattern stack_protector libcpp_hardening force_debug_info largefile precompile_header sse2 sse3 ssse3 sse4_1 sse4_2 avx f16c avx2 avx512f avx512er avx512cd avx512pf avx512dq avx512bw avx512vl avx512ifma avx512vbmi avx512vbmi2 aesni vaes rdrnd rdseed shani neon
QT.global_private.disabled_features = use_bfd_linker use_gold_linker use_lld_linker use_mold_linker android-style-assets gc_binaries developer-build private_tests debug elf_private_full_version no_direct_extern_access mips_dsp mips_dspr2 arm_crc32 arm_crypto localtime_s posix_fallocate alloca_malloc_h stdlib-libcpp dbus-linked libudev intelcet glibc_fortify_source stack_clash_protection libstdcpp_assertions relro_now_linker
CONFIG += force_debug_info largefile precompile_header sse2 sse3 ssse3 sse4_1 sse4_2 avx f16c avx2 avx512f avx512er avx512cd avx512pf avx512dq avx512bw avx512vl avx512ifma avx512vbmi avx512vbmi2 aesni vaes rdrnd rdseed shani neon
QT_COORD_TYPE = double
QT_BUILD_PARTS = libs tools

QMAKE_LIBS_ZLIB = -lz
