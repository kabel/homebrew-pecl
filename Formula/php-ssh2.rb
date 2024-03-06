require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "c44aeebbdb70325f22278a41d436aefe673963ae541322445e993bf7051cfaf5"
    sha256 cellar: :any, ventura:  "37787ad7c15f96c2a572f19e0d9022f56466fea722e722c9b75bfdb38759354a"
    sha256 cellar: :any, monterey: "3f7ece6bdca84db655afa0841fb1aa8c6c58b79c4328d8821615d3099eb177f7"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
