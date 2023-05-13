require_relative "../lib/php_pecl_formula"

class PhpAT80Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.tgz"
  sha256 "988b52e0315bb5ed725050cb02de89b541034b7be6b94623dcb2baa33f811d87"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "214e1c6f14a407bda20993e0dca1b5c81caeb354ee075c43fa35734cd8f4e1ad"
    sha256 cellar: :any, monterey: "44b60485e1b481b8fe45ac3e6fb9c4d30bc22d45b3971cba4febe673fab5a987"
    sha256 cellar: :any, big_sur:  "c8ba043647924592fa668d4f8fed32702da432f3be0950786f573cf66f803ab5"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
