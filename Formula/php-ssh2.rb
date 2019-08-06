require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=79371dc05ff34e58f796e6755e25ba91c169ac1a;sf=tgz"
  version "1.2-dev"
  sha256 "4c252f0f87eb1a769b0bd784e999218b976c1ef2262302f1fec772f48915dbe6"

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
