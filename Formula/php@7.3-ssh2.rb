require_relative "../lib/php_pecl_formula"

class PhpAT73Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.2.tgz"
  sha256 "7f9f205f5b555692f7b010ffb68a01e21860176062f2ec14dc577d994cecd929"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "2e58333d59a1fb7dff8ebab75deede73f4458f98a2b1b12a9bdba33c19fa7a69" => :mojave
    sha256 "982d0d4dafe55b2ae057470601a26276fea9f67f605c079b867734898049a312" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
