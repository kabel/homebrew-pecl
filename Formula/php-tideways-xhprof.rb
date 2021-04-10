require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "e1b8dca10f53bae58a0dad1905aaaf471727f5dd0aea62812d95a17254518973"
    sha256 cellar: :any_skip_relocation, mojave:   "7a0cd59fd5accd50d6a2108765ddde6704f439eb48e763d26c014422ccd91d8d"
  end
end
