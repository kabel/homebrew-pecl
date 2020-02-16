require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.6.3.tgz"
  sha256 "169b0d253049c16463eeffa97343e0758a3ac4fb372336917fe9aea700b22a57"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5b4dfb243267d371ffe8f09bfa9d3399014ca6c62b24eed6ec01ead144cfa0a9" => :catalina
    sha256 "85e8a356b9af98916c06464bf7fa0e41ea1101f5fbee0f4f5293df6fe3990b53" => :mojave
  end

  patch :DATA
end

__END__
diff --git a/translit-0.6.3/translit.c b/translit-0.6.3/translit.c
index ded87c8..2e54a02 100644
--- a/translit-0.6.3/translit.c
+++ b/translit-0.6.3/translit.c
@@ -127,7 +127,7 @@ PHP_FUNCTION(transliterate)
 	char *charset_in_name = NULL, *charset_out_name = NULL;
 #if PHP_VERSION_ID >= 70000
 	zend_string *in, *out, *tmp;
-	ulong num_key;
+	zend_ulong num_key;
 	zend_string *key;
 	zval *val;
 	zend_string *string;
