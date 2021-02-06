require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.3.tgz"
  sha256 "4b597525e29cb3c38ca9fdab0cd09ad754ba364a067e97252b40e0b943ab85ee"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3ed351dfe2792f18cd4cd772e63ae8c40d98cd3b43a6aa1a90e710fc04c2237c" => :catalina
    sha256 "f68bf77d44a8d9ef06d15833913e010ddefd456b2bccedd270d677d991333b62" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
