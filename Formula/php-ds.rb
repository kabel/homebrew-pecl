require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "1c85099b32c1639c1ce51aecf18ae8e06b7e712ec8b55b8e02d058d303d23dd6"
    sha256 cellar: :any_skip_relocation, monterey: "5255a60b1e0a451ef2575e7f587c9450527395cd7be3215132b5585a3b716028"
    sha256 cellar: :any_skip_relocation, big_sur:  "7be3e6e8776cae38b6ab0c828c0a47be004a9bd21508d3eb53825d5e269f725f"
    sha256 cellar: :any_skip_relocation, catalina: "be9e1741ebe291d2f2bd7a3b9cc56ee242e515f5a42a9eb8f882b0cf60a54818"
  end
end
