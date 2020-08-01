require_relative "../lib/php_pecl_formula"

class PhpAT73Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "2e58333d59a1fb7dff8ebab75deede73f4458f98a2b1b12a9bdba33c19fa7a69" => :mojave
    sha256 "982d0d4dafe55b2ae057470601a26276fea9f67f605c079b867734898049a312" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
