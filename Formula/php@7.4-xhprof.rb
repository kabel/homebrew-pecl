require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.1.tgz"
  sha256 "ec039d90a5d5df9400c47552e4e4f2c230663b179e063db9f4f6654b05b346b5"
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
