require_relative "../lib/php_pecl_formula"

class PhpImap < PhpPeclFormula
  extension_dsl "IMAP Extension"

  url "https://pecl.php.net/get/imap-1.0.3.tgz"
  sha256 "0c2c0b1f94f299004be996b85a424e3d11ff65ac0a3c980db3213289a4a3faaf"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c6e94c9a46c2e38919c2ff436396925bd1e1591d7b1daf8dc745626ef9960226"
    sha256 cellar: :any, ventura: "1009084aa373ec0b3235f184964788e1545148d6ce29e5f60aa382da9e9a5430"
  end

  depends_on "imap-uw"
  depends_on "openssl@3"
  depends_on "krb5"

  configure_arg %W[
    --with-imap=#{Formula["imap-uw"].opt_prefix}
    --with-imap-ssl=#{Formula["openssl@3"].opt_prefix}
    --with-kerberos
  ]

  def install
    ENV["PHP_OPENSSL"] = "yes"
    super
  end
end
