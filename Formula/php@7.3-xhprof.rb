require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.1.tgz"
  sha256 "ec039d90a5d5df9400c47552e4e4f2c230663b179e063db9f4f6654b05b346b5"
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
