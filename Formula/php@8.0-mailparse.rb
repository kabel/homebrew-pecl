require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b767bc78aade1258db82e3ae32227d9c45aa9832f0c2682c4f46b85df6fd86db"
    sha256 cellar: :any_skip_relocation, catalina: "9dbedb3aaede964e7800cb47d6bd7e363da3a56a99fb26323aa46242c47ade7a"
  end
end
