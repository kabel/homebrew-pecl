require_relative "../lib/php_pecl_formula"

class PhpAT74Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.2.tgz"
  sha256 "7f9f205f5b555692f7b010ffb68a01e21860176062f2ec14dc577d994cecd929"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "d529beff0dabb10bd7658c771d0b1d089c10c48d8488e2efdc739b9ef0856651" => :catalina
    sha256 "c74216425490b46de97f3b757fad7bbdee99e2f367855052ebf4ba56607a127c" => :mojave
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
