require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  revision 3
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "25c8a8c75684d08b89158e12eea1c74bdab029c3c0f97fb16e82717a4cb90dcb"
    sha256 cellar: :any_skip_relocation, ventura:  "0701b16c6fc1653cd23d0d7092c418041adf026a97393d962ed30e692c09b721"
    sha256 cellar: :any_skip_relocation, monterey: "04f77d3bb804b583a577e6994a1406fa702512aa8f8a314c9af17b26b921a3b3"
  end
end
