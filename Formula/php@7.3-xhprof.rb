require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b012a69d473f081fb91dee967ed135cb1f91dd6949737e78e63ba10b0ec79473"
    sha256 cellar: :any_skip_relocation, catalina: "09e9ca736b40e06c501d2074541d31a608c36e75fcaca49f3fb50c41cca820f9"
    sha256 cellar: :any_skip_relocation, mojave:   "4167a9719efc219f95ddd0cc40082f3d27d4d19b725e726d60f0d35c3eefc13b"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
