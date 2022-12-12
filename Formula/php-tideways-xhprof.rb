require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  revision 2
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "64d95f2c5bc9aedcbbe4e2dab805f00c1dc6edbef2e3ef5447abcf3f0eacd08c"
    sha256 cellar: :any_skip_relocation, monterey: "4e67ee01a211890b1db041f3e6e0f4d281b13d2762f916962c8dc040a2b81524"
    sha256 cellar: :any_skip_relocation, big_sur:  "688e845b2e7138ec6233bb38908818a02055cf0095f2e8e4a3e0cf238e9cf1fa"
  end
end
