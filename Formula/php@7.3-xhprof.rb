require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.2.tgz"
  sha256 "4438a56d19630dfb82f6f3fe7d51f4c0b99095fd1154b93fc70d80852068d907"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5808e9a6ce1fc2d22e8b27360ba6e7c3823a714469b56a79f6614b75f5827c4c"
    sha256 cellar: :any_skip_relocation, catalina: "dad5fdf6881a73815a5441c4a26d58013cfd9d71a0c47bbbba28f7e868a9cdd3"
    sha256 cellar: :any_skip_relocation, mojave:   "ceb3e09ff8f8bf1d405bfc5f5895022dd9c2ee1d73e34ad5a5f7919a72ac2f8e"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
