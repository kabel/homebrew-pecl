require_relative "../lib/php_pecl_formula"

class PhpAT81Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "4f81cf57334f0b6831e4213e672f1e175aec05bc1c38e663f6ab85e5c7beff28"
    sha256 cellar: :any, monterey: "cb0c7bfe69ed3f5a7ab51d6de43f0e17914a93aac73810b7c65304c86f807496"
    sha256 cellar: :any, big_sur:  "78b8975023b3998647626f9abfc7de9792d372e1c997210492fe52d26dc1e084"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
