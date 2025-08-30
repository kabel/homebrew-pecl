require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "6b705a3dff45067a20c107d525c4d19ba0927c21e827abcfae0ffe0174dae752"
    sha256 cellar: :any_skip_relocation, ventura: "9d2f2c96970b22004c0ed445a840334f1f35ead6bef765e5f0a669ae1a402a5a"
  end
end
