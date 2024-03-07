require_relative "../lib/php_pecl_formula"

class PhpAT81Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "23304d2a933f07c1fbee01bf47b78c3e83f1b35b61f0c1c9c0f532c56b1ebd7f"
    sha256 cellar: :any, ventura:  "2c3432167f7273ba8d90ea297e038a6b51f431195c943d3c78891462f66bb907"
    sha256 cellar: :any, monterey: "909f616ceef144824f985fcad50a9e79f6c6f5ba1d3952bd11fb081ba20251fd"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
