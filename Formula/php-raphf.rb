require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 5
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "d016315e0a3d8a31f7176895496f04f382deda373e32154c61dc0009c907343d"
    sha256 cellar: :any_skip_relocation, monterey: "e8876c6b1a3f3a7d92071feba4a4feec653e6194f97204b0a41ce2f3e009cda8"
    sha256 cellar: :any_skip_relocation, big_sur:  "0f17364d936ffadfb0fdc0996cb740f7a8abc9ab450df12243dc647f18c88bc6"
  end

  conf_order "05"
end
