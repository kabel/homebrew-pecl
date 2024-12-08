require_relative "../lib/php_pecl_formula"

class PhpImap < PhpPeclFormula
  extension_dsl "IMAP Extension"

  url "https://pecl.php.net/get/imap-1.0.3.tgz"
  sha256 "0c2c0b1f94f299004be996b85a424e3d11ff65ac0a3c980db3213289a4a3faaf"
  license "PHP-3.01"

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
