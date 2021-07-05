require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.3.tgz"
  sha256 "66ca93466bff4bc10813d73133d0c31e740ec114cb23a538e3fd4d81daad51e1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "afb5fdbbe6b4e3eed0261db246fbd2460b7d1d10d947ca3f4676284d6b58f137"
    sha256 cellar: :any_skip_relocation, catalina: "91aec1018de091217986027d57a799544e5295b58475a51a95c9bf0ec8065841"
    sha256 cellar: :any_skip_relocation, mojave:   "bb5b27452bae7b7d1c2667022a445f78a4d3b3af325f16a567dd6ed0f444b239"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
