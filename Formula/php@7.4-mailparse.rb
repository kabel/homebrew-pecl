require_relative "../lib/php_pecl_formula"

class PhpAT74Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "421be5c7686c7f1aadf291c697cb221ebbf1223107ca3322b011c171a4db4b50"
    sha256 cellar: :any_skip_relocation, catalina: "129bec55955e8c47c869bbb04c7f4a6b934c168ee5cb6f12e6311c0d10fa173d"
    sha256 cellar: :any_skip_relocation, mojave:   "cb74b37b86eb76848c5069e5a95694a9db9dd12aad9096487066894a345ce704"
  end
end
