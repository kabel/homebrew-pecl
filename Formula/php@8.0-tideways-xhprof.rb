require_relative "../lib/php_pecl_formula"

class PhpAT80TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "e4650f1671a10b7bcaf0d98183af7085a17d79519df9db7bd118a2c84f29d04a"
    sha256 cellar: :any_skip_relocation, monterey: "4b5f843d34420549ea14026b47522a0357c242170440904134e905d116c812ff"
    sha256 cellar: :any_skip_relocation, big_sur:  "708413bdfec8022f434628f01c3c8fc5c9c60d3e34e3a122c4f96f683f0e8614"
    sha256 cellar: :any_skip_relocation, catalina: "4a6a51fed200a2c9f388e0cb5ed369641e7f43bf0afca77f125e6f4587c5c25d"
  end

  deprecate! date: "2023-11-26", because: :unsupported
end
