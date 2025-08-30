require_relative "../lib/php_pecl_formula"

class PhpAT82Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.27.tgz"
  sha256 "1a2c37fcad2ae2a1aea779cd6ca9353d8b38d4e27dde2327c52ff3892dfadb3f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "a329afe511049b897c08b0290268e9e6ab1413c0021b2c4a0711f44d4be29564"
    sha256 cellar: :any_skip_relocation, ventura: "b412d5d64d73321b63ac84b644d97347101dd62689adb6bdb5ea514d2c8b3649"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
