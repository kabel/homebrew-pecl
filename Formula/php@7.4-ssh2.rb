require_relative "../lib/php_pecl_formula"

class PhpAT74Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "fa3469e4b6266a79329455200378f70fa5bf193b9433c9856fa99e1a1f11f5e2"
    sha256 cellar: :any, monterey: "cd6cde2cd7904cb48b2b3f1538bc0de01aaec620aa11cb7b3c5e873a1466e05c"
    sha256 cellar: :any, big_sur:  "77f42a214d9adfb6e0afd4dbd9e10d8dae28f19604f9bc33763d4669d245481c"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
