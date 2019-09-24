require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "b9fd4c1f44f618ef4bc476f109b38f074a7e103a88e44d3eaafea6b59d26e6c7" => :mojave
    sha256 "ea46ae84ca421f3f0e750d796c73e6b6f0ee94a9c58811309669c5378bef8a69" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
