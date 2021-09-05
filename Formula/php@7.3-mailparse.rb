require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "df10f6c7653fbba151ccb4ca96e36e788b2864e0b8c84029a0e46a566f7b6acd"
    sha256 cellar: :any_skip_relocation, mojave:   "2a96f01d32288715198ee1b4d03c7a7cc7fa3136e248e42b87b434317e8a8aaa"
  end
end
