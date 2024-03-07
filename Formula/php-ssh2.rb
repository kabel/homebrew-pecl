require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.1.tgz"
  sha256 "7bca5b23f731db9d8ed0aea5db9bb15da8ff133b0fbba96102b82e95da4d8764"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "a8f3954e39c5a9d5ef110db3f127fd10a0bdcd1460b84ecd43262df7be0a3a64"
    sha256 cellar: :any, ventura:  "5a5fbcbf0a764f1ea9d0461e6899e8f56834c6ad222e0c735d77150ad9932e37"
    sha256 cellar: :any, monterey: "e6532c25a6198c0401f9d37b874b981fbeb9f729e578bdf857452adc44d8c317"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
