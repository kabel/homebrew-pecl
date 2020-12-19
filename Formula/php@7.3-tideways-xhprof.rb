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
    sha256 "ebb864c97e765891c4079bd5f25938f369a0701300e9706a30a415f7631b70b5" => :catalina
    sha256 "66a8b06d0a5816dbcc2eb32544ed4defa8cc9ef287e32a2083b9011e0d6e783a" => :mojave
  end
end
