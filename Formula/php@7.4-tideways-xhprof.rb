require_relative "../lib/php_pecl_formula"

class PhpAT74TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "188ee8e57cf8ef19c112e71dda53241320ddc93217a5a8f065fa2b49962fa1c2"
    sha256 cellar: :any_skip_relocation, catalina: "4bbe58f00450d3cff2bf903af13d05411840a17497d8abddc753151c1639301b"
    sha256 cellar: :any_skip_relocation, mojave:   "beb6e1e97c20a6bc9891491c3efeb37b07470e8ea253d8c2017795581557aa21"
  end
end
