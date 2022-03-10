require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.3.tgz"
  sha256 "8659ca62dc9a4d7d15f07f97a0e2142cb58251c8e772cd36669ec740d2292471"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5db8017f13d4670b7d45483a9f6af0e62b78834d9e41529d094687d9385f97b3"
    sha256 cellar: :any_skip_relocation, catalina: "f81177256b795ab4e5124424b6d17a7aa0e528012503f01dc6abdc5fcfd7d99e"
  end
end
