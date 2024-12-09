require_relative "../lib/php_pecl_formula"

class PhpAT81Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "7d33bc4e4351c5b13f617a993da5d441d23c3d2831f5b2f740efec71d704163a"
    sha256 cellar: :any_skip_relocation, ventura: "6dc1533b11c4e5f0a14808b4ff900dffd3ec434d26b9085c9b4b0c2df8068405"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
