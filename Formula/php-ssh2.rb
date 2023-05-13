require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.tgz"
  sha256 "988b52e0315bb5ed725050cb02de89b541034b7be6b94623dcb2baa33f811d87"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "0e56da6a68d4ce9b27b685b8ca1bff49f38db4979174c24c4235b2674a9d06ad"
    sha256 cellar: :any, monterey: "132d986f7022bd7a9499f96d119bb06764b8a3e5d906326463a1fa636a54366e"
    sha256 cellar: :any, big_sur:  "3e896bded1104a8edda5e63e9b8298e8f2212d70982b663add4b6d33a34e84d1"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
