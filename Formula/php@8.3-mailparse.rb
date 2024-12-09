require_relative "../lib/php_pecl_formula"

class PhpAT83Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "1692afd44630777f1f386e6953eac2df8d078f7323b5df30d5ce6656c85d288f"
    sha256 cellar: :any_skip_relocation, ventura: "98f25cec45dfa747539006c64ce4d60ca2708c54f6e92f286eed447fa9fbca8e"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
