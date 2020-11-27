require_relative "../lib/php_pecl_formula"

class PhpAT74Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.2.tgz"
  sha256 "7f9f205f5b555692f7b010ffb68a01e21860176062f2ec14dc577d994cecd929"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "a389fe29698d860204eeb962f61d8912f7abfd5ca51c9991a0897a2f132c07f8" => :mojave
    sha256 "02913cd3b526d1196cd849b7099d40631f6d448dfc5e01dcef37f8d2384cb0cb" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
