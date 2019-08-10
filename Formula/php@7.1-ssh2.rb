require_relative "../lib/php_pecl_formula"

class PhpAT71Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=79371dc05ff34e58f796e6755e25ba91c169ac1a;sf=tgz"
  version "1.2-dev"
  sha256 "4c252f0f87eb1a769b0bd784e999218b976c1ef2262302f1fec772f48915dbe6"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "27afe8a54a01bd466f00239084377be8b49d6660d79ccb38a1f91af0b5574d84" => :mojave
    sha256 "214b42b477f1009149695ee7d90b74cc463b7f3683c2f2bacc8250d36fbce848" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
