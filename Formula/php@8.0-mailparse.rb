require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f4ffab1d47e5941d874a1315e68a7edfd7adb4a17b21c44fcf7cce0ea9ec09f2"
    sha256 cellar: :any_skip_relocation, big_sur:  "5db8017f13d4670b7d45483a9f6af0e62b78834d9e41529d094687d9385f97b3"
    sha256 cellar: :any_skip_relocation, catalina: "f81177256b795ab4e5124424b6d17a7aa0e528012503f01dc6abdc5fcfd7d99e"
  end
end
