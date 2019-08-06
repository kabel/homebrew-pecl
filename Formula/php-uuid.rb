require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.0.4.tgz"
  sha256 "63079b6a62a9d43691ecbcd4eb52e5e5fe17b5a3d0f8e46e3c17ff265c06a11f"

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
