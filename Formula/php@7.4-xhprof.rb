require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.4.tgz"
  sha256 "a4b47d278c9424e226ed9ce0b63b9ab6cba5a16a732063ccaffeaf85730353a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "1afdb0789c9d5d7caad20b36ecba8ab9f53625c3e39a08b018ff7d8972787ebe"
    sha256 cellar: :any_skip_relocation, catalina: "fcd567c0c3202f634fd3894198acffbb63d12bf4b7a4ea406ab8b22b4ec5ccd7"
    sha256 cellar: :any_skip_relocation, mojave:   "686267165000e444fc4a097fb7a9f777053de9f9e098496ca1f5bc2da171ff72"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
