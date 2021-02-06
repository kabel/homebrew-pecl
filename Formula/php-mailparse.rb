require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6bbc1f8da97b263d0f7f02c6d71b8719ab13696758654af15ab18df892a5ecf7" => :catalina
    sha256 "0f9a3d3f074c045d36c66497ea2483d68a71bfe5d77be38f7e2cfeeb768adae5" => :mojave
  end
end
