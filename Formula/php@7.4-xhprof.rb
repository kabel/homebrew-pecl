require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.2.tgz"
  sha256 "4438a56d19630dfb82f6f3fe7d51f4c0b99095fd1154b93fc70d80852068d907"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "bd37576d05e8a3bf0ed8f02c032a3187269ed453b0d4a3c19ad37b9979e4ba57"
    sha256 cellar: :any_skip_relocation, catalina: "0f2201262bce88951adbf51b4bc7caacf3a6eb5754612981bc61954c7ea39327"
    sha256 cellar: :any_skip_relocation, mojave:   "a02b7ec67a567b1142505c5d5dc07189cc03a7f3e326f4b9e035ace4113c60e5"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
