require_relative "../lib/php_pecl_formula"

class PhpAT82Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "e966864dfc2075f110a463c0727ef50422ece9906f5858b075874a87d2b542c6"
    sha256 cellar: :any, ventura:  "108fe820ba12981c6e3a3a232b029827ac0df69aba6a0369dd07155e93f01134"
    sha256 cellar: :any, monterey: "6552bd8966bddc16dc91692d0976c0845c9a793f84e1308eca16c5282e811e5f"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
