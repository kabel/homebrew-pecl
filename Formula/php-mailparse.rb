require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "6bbc1f8da97b263d0f7f02c6d71b8719ab13696758654af15ab18df892a5ecf7"
    sha256 cellar: :any_skip_relocation, mojave:   "0f9a3d3f074c045d36c66497ea2483d68a71bfe5d77be38f7e2cfeeb768adae5"
  end
end
