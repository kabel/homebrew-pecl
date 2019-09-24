require_relative "../lib/php_pecl_formula"

class PhpAT72Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "4a0b9fd5f740ded4875cc0b3da24b7ca515e79f370f30062d8f24e7a5b927c36" => :mojave
    sha256 "98517356e420f698a65705426780b25aa92ab5780688decceac0c6dcbf03739c" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
