require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "4bea3336597eabdd7bd2541cc6e79531ef255e7b4f77eb2e8db704095d5f2586"
    sha256 cellar: :any, monterey: "bea1c62226f814a1a45d16545966a0419741f9438dd74c4e5e6fe3d5d1eb8671"
    sha256 cellar: :any, big_sur:  "3eb6eb1f7e9fe9e3f7b6e09fef7b0b78960ffd5c533dbdafc3548ae0cd998c2a"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
