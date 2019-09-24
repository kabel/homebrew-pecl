require_relative "../lib/php_pecl_formula"

class PhpAT71Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "624971c6d992312a983f49a9c544d725619ddb3b4ebfbba01fc5188c82b88730" => :mojave
    sha256 "7dd646df96ef4a55d243cc11a8bdc1bd20563819e9e01bd99e657435efbad361" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
