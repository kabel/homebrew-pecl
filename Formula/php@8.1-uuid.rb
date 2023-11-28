require_relative "../lib/php_pecl_formula"

class PhpAT81Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "2f26b3d88843fb04131dfdcc03abed1376ed073dbfe56a964193e21ab9f5b938"
    sha256 cellar: :any, ventura:  "270a19c358ee83253d4fe28ab2c8a834f3bdd6b21bc81609deb7cef268272ff7"
    sha256 cellar: :any, monterey: "10c5906bb7161c482781afc01b1b8dcda5ba966db7638f705b3571b30c7e66ce"
    sha256 cellar: :any, big_sur:  "1ed4366de75d1d25b8f2692695c080d2b0f83798fc5e99c1d5fc23012b853553"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
