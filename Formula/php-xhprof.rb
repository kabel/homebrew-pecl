require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.3.tgz"
  sha256 "4b597525e29cb3c38ca9fdab0cd09ad754ba364a067e97252b40e0b943ab85ee"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ed743d7be89b0c2da48e20f28c03aa20edeeae5a0f18760fb8a6fca3d158d0ea" => :catalina
    sha256 "14df24cb1dea3d66b9c9c6eb50c7606ea9847d5e6512729bc4ef02c728fe6c36" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
