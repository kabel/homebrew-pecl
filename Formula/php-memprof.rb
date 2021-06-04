require_relative "../lib/php_pecl_formula"

class PhpMemprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.0.tgz"
  sha256 "3ea040f59f828fe6999ffa6ff1a6762a457f5c6af6ccfb1614ace884cc19dd82"
  license "MIT"

  resource "judy" do
    url "https://downloads.sourceforge.net/project/judy/judy/Judy-1.0.5/Judy-1.0.5.tar.gz"
    sha256 "d2704089f85fdb6f2cd7e77be21170ced4b4375c03ef1ad4cf1075bd414a63eb"
  end

  def install
    resource("judy").stage do
      system "./configure", "--prefix=#{prefix}/judy"
      ENV.deparallelize do
        system "make", "install"
      end
    end

    configure_args << "--with-judy-dir=#{prefix}/judy"
    super
  end

  patch :DATA
end

__END__
diff --git a/memprof-3.0.0/config.m4 b/memprof-3.0.0/config.m4
index f3c2fbf..0f4e8cd 100644
--- a/memprof-3.0.0/config.m4
+++ b/memprof-3.0.0/config.m4
@@ -70,6 +70,7 @@ if test "$PHP_MEMPROF" != "no"; then
     AC_DEFINE([HAVE_MALLOC_HOOKS], 1, [Define to 1 if libc supports malloc hooks])
     AC_MSG_RESULT(yes)
   ],[
+    AC_DEFINE([HAVE_MALLOC_HOOKS], 0, [Define to 1 if libc supports malloc hooks])
     AC_MSG_RESULT(no)
   ])
 
diff --git a/memprof-3.0.0/memprof.c b/memprof-3.0.0/memprof.c
index d697629..37fae07 100644
--- a/memprof-3.0.0/memprof.c
+++ b/memprof-3.0.0/memprof.c
@@ -759,7 +759,7 @@ static char * generate_filename(const char * format) {
 		slash[0] = DEFAULT_SLASH;
 	}
 
-	spprintf(&filename, 0, "%s%smemprof.%s.%ld", output_dir, slash, format, ts);
+	spprintf(&filename, 0, "%s%smemprof.%s.%lld", output_dir, slash, format, (long long) ts);
 
 	return filename;
 }
