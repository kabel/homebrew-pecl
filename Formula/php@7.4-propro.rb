require_relative "../lib/php_pecl_formula"

class PhpAT74Propro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "535b2260f25ff812b08656d3f8c4c200d15ef7b2ad83bd13983e0f5b4c0c5e42"
    sha256 cellar: :any_skip_relocation, monterey: "3085c3eb103c2ca16af5a020743e82659da9c323f093ec5f8bdc716191cd4dcc"
    sha256 cellar: :any_skip_relocation, big_sur:  "de716a2c9cd3eee184d2f29806cfd62831bd9e554ad040f5ab726a41100ff19a"
    sha256 cellar: :any_skip_relocation, catalina: "c3531fc58cf330c72af1dfc832070a1d128dc74056e9e7a14dae2f44ebdf2b1a"
    sha256 cellar: :any_skip_relocation, mojave:   "d9b625c316d71006ba158bff338c6644638525b42f11fe6c33a0ee320f91df43"
  end

  conf_order "05"
end
