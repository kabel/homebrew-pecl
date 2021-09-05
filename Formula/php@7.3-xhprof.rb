require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "20cda2440581b7e6808fd94b8eb1bff1472cbd9c43ece6e7ca7c5d91f59bea90"
    sha256 cellar: :any_skip_relocation, catalina: "2c28e4b538c881bb737643da0a1876e4e407af4b1574def54af7fc2bb699d53b"
    sha256 cellar: :any_skip_relocation, mojave:   "31567ee1f057b7c4915644169eb5d3357c9eb0c5717b28a5687b5df65d68e93f"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
