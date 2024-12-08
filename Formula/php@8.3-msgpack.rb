require_relative "../lib/php_pecl_formula"

class PhpAT83Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "e078e8d09aff3d42273875bf163cef18ff2e6b9912075a8edf72493c46c096d4"
    sha256 cellar: :any_skip_relocation, ventura: "ef53fe77d911f928f420cb8645bfd3e31301749da5c71b2ca6bd1ac83e11afc7"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
