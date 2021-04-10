require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "df10f6c7653fbba151ccb4ca96e36e788b2864e0b8c84029a0e46a566f7b6acd"
    sha256 cellar: :any_skip_relocation, mojave:   "2a96f01d32288715198ee1b4d03c7a7cc7fa3136e248e42b87b434317e8a8aaa"
  end
end
