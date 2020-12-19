require_relative "../lib/php_pecl_formula"

class PhpAT73TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "33441943e77acf98bdadab5115bfb50b66686f12f20303723648d137ce3d6e6c" => :mojave
    sha256 "b80a860ff36ab261e97e215c1747b3babb55acea19e90bc0d494aac830e95351" => :high_sierra
  end
end
