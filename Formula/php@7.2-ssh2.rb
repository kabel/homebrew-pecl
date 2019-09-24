require_relative "../lib/php_pecl_formula"

class PhpAT72Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "http://git.php.net/?p=pecl/networking/ssh2.git;a=snapshot;h=e9e1fd5cbefe2f43de37974e5988a9d05d005078;sf=tgz"
  version "1.2"
  sha256 "7536cf4975915389c60afc9784e8ecf5100d1d994ea01749cb418e388069c411"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "a389fe29698d860204eeb962f61d8912f7abfd5ca51c9991a0897a2f132c07f8" => :mojave
    sha256 "02913cd3b526d1196cd849b7099d40631f6d448dfc5e01dcef37f8d2384cb0cb" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
