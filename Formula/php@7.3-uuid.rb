require_relative "../lib/php_pecl_formula"

class PhpAT73Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.1.0.tgz"
  sha256 "981c1c2fec77aaffec29242c29a346bc6ec2115053e9b6b5afb4a4e149a2333f"

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
