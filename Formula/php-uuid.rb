require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  revision 3
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "31cf4e554160fb3b11e72a3cb257f5f00dfebc79affe5c3bbd2588a7933b910b"
    sha256 cellar: :any, monterey: "25eabe73c125dfb2d8d14f928ad21595a7f0e9634e8ee6c00cbd2f7408515c7b"
    sha256 cellar: :any, big_sur:  "0ee87476d44edc8e9debe2b21b9c89279872173eadbafcec3667919b2a7176cf"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
