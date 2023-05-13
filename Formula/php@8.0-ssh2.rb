require_relative "../lib/php_pecl_formula"

class PhpAT80Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.tgz"
  sha256 "988b52e0315bb5ed725050cb02de89b541034b7be6b94623dcb2baa33f811d87"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "a380914e210dde65e2b8e4d7c3b48891e8c459766e6a9df265e74a46de79a79b"
    sha256 cellar: :any, monterey: "845ba8fb81c5f6482fbc7907e36fe8a19194e6d69353a308fe2c0a5a3ea9b58f"
    sha256 cellar: :any, big_sur:  "d676b86b3b0c0959171caacafeb9625663b330e4bf86b7b7764010cb43392cbb"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
