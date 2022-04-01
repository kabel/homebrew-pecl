require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.7.tgz"
  sha256 "d0dc0d0b56a985f4f52cea20717133d3da05368876bc0f94317c1e60e0319e7d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "5a29d3162b9edcca223c07bfb73a654c4896cf0e0d82a8ea5b09015442d2a472"
    sha256 cellar: :any_skip_relocation, big_sur:  "a488947f8c5e98cf6b288dd50f074676ad70cc17cd6d9b4108a3d9e84b5dfeea"
    sha256 cellar: :any_skip_relocation, catalina: "c6f6acdfe2f5291b4a6689b63a07bacaa0ee6f014b879f0465cac3e792b4677c"
  end
end
