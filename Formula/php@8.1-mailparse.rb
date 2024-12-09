require_relative "../lib/php_pecl_formula"

class PhpAT81Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.8.tgz"
  sha256 "59beab4ef851770c495ba7a0726ab40e098135469a11d9c8e665b089c96efc2f"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "f420f539ab8a555d63f46f93a5fbafecdc757607f814e7da8989a735a19137ff"
    sha256 cellar: :any_skip_relocation, ventura:  "f9d2a239c9a96fbbd7e3bfbae92a10e1f394e3b069a907e9dbe724e085c7ad48"
    sha256 cellar: :any_skip_relocation, monterey: "928734695d257c1a75505b01bc0f6f5eec8ec8380b070449fb54839093051ff4"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
