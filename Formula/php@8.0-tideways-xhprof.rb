require_relative "../lib/php_pecl_formula"

class PhpAT80TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "708413bdfec8022f434628f01c3c8fc5c9c60d3e34e3a122c4f96f683f0e8614"
    sha256 cellar: :any_skip_relocation, catalina: "4a6a51fed200a2c9f388e0cb5ed369641e7f43bf0afca77f125e6f4587c5c25d"
  end
end
