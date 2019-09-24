require_relative "../lib/php_pecl_formula"

class PhpAT71Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "27afe8a54a01bd466f00239084377be8b49d6660d79ccb38a1f91af0b5574d84" => :mojave
    sha256 "214b42b477f1009149695ee7d90b74cc463b7f3683c2f2bacc8250d36fbce848" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
