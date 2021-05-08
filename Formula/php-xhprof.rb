require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.2.tgz"
  sha256 "4438a56d19630dfb82f6f3fe7d51f4c0b99095fd1154b93fc70d80852068d907"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "d028762fd679b2e541dfbe4663e31f66b01a89bf78e8584c8fd748d477895b66"
    sha256 cellar: :any_skip_relocation, catalina: "40ceb5a61157be94d61b4752cefbffa784aebdd7560de81aaaf2e46524b13fec"
    sha256 cellar: :any_skip_relocation, mojave:   "367c95056f335275960c2f63494b1a1ff4640c6fc2f7ef213087341115c3a23d"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
