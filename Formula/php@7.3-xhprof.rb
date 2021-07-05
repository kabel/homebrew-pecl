require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.3.tgz"
  sha256 "66ca93466bff4bc10813d73133d0c31e740ec114cb23a538e3fd4d81daad51e1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "c1434a30b8ba9a23763e339ba8fa838c3a9b06e00a98c934556503ea6b09db0e"
    sha256 cellar: :any_skip_relocation, catalina: "849c16ead65207e8dd25d94674d896a938273d8973ee7e5300d674abb05c109b"
    sha256 cellar: :any_skip_relocation, mojave:   "6430ed8a2ab009859d55fb43000c5d7661b4e852c60dad0dd43f731a0cd03a0d"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
