require_relative "../lib/php_pecl_formula"

class PhpAT72Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=79371dc05ff34e58f796e6755e25ba91c169ac1a;sf=tgz"
  version "1.2-dev"
  sha256 "4c252f0f87eb1a769b0bd784e999218b976c1ef2262302f1fec772f48915dbe6"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "4a0b9fd5f740ded4875cc0b3da24b7ca515e79f370f30062d8f24e7a5b927c36" => :mojave
    sha256 "98517356e420f698a65705426780b25aa92ab5780688decceac0c6dcbf03739c" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
