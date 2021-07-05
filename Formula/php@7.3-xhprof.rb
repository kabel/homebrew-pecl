require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.3.tgz"
  sha256 "66ca93466bff4bc10813d73133d0c31e740ec114cb23a538e3fd4d81daad51e1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "68379d504c7dfea6eb288d1dfa38ff15adf2145bbe9fda41c30644eb8c7f9361"
    sha256 cellar: :any_skip_relocation, catalina: "cc3f69b26e0f77069233c83fbcc2cc1781315760e619ad36782f025d5dc9ea64"
    sha256 cellar: :any_skip_relocation, mojave:   "7d4e78ef65cb44c88fb63be538f8457cbd61fde81786e0e1c244bf0871b21b33"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
