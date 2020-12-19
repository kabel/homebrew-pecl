require_relative "../lib/php_pecl_formula"

class PhpAT74TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "767cea537c244477d21e6bffac8055611c51d24baa17d99d32cdcdd5b089daf2" => :catalina
    sha256 "e1b80959cf9672ef8964553cd5cfec35fc219a1445f37993bef162fbccabef87" => :mojave
  end
end
