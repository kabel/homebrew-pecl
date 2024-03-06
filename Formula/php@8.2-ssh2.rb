require_relative "../lib/php_pecl_formula"

class PhpAT82Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5e8c161838d945ad86c436b0382de1bff7459a60e3cf15025e9684985cb164e1"
    sha256 cellar: :any, ventura:  "d49547c7401627f98c163840c269cc0277b71b5deb8c63d222f8c63847b1f226"
    sha256 cellar: :any, monterey: "5f342f1e36bc42249478b830c6f65246bbd99d99c87f8a015f0b774db3a24f07"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
