require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.0.tgz"
  sha256 "09a5b5628ff5085fd79fb7bbecce0ad1f29d79c5708b78fbf5311b74ccb8d242"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "37149e69860dc62c23f5df9d9ebcd8466b14fb0d77368c9586678171aa237727"
    sha256 cellar: :any_skip_relocation, catalina: "094349c91404b82de25c7cf1f7ebd9dc69707ff9cea24c04fe1568094a846f43"
    sha256 cellar: :any_skip_relocation, mojave:   "17bbea3aa7c6bb63e796eed8a3010a365ab8a31c0d07f47c534f875be16246d4"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
