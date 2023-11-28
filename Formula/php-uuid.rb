require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  revision 4
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "df8663ae2649a838d2fd7dceb036a57c69861cd30a7e51b9a83be3c38c305976"
    sha256 cellar: :any, ventura:  "2753c422e932259e6d393f0e383fa760009f4bdc62b83c5659d7c2b0d0045640"
    sha256 cellar: :any, monterey: "89483fb5c368f6e46c70af128dc8cda0525985f8086ed03e68c02b0104c2793f"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
