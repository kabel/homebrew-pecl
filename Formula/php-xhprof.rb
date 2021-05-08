require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.2.tgz"
  sha256 "4438a56d19630dfb82f6f3fe7d51f4c0b99095fd1154b93fc70d80852068d907"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "70607bbe6e643c155c2a208ffa08f86087cc91a15cbb69a11b36cec183c37808"
    sha256 cellar: :any_skip_relocation, catalina: "3027cd4b164642cf16622eb7b16804dce175bd325dcc23fb6cf7ac194c147a4c"
    sha256 cellar: :any_skip_relocation, mojave:   "1a4151bb828a507ab4b65403b442ef649a703ed3822d68e5acf61ee7f34d2444"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
