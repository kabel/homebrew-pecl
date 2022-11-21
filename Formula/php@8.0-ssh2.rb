require_relative "../lib/php_pecl_formula"

class PhpAT80Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "a380914e210dde65e2b8e4d7c3b48891e8c459766e6a9df265e74a46de79a79b"
    sha256 cellar: :any, monterey: "845ba8fb81c5f6482fbc7907e36fe8a19194e6d69353a308fe2c0a5a3ea9b58f"
    sha256 cellar: :any, big_sur:  "d676b86b3b0c0959171caacafeb9625663b330e4bf86b7b7764010cb43392cbb"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
