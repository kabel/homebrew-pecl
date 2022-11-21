require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "63cb5f7afa51a7b29d44924482c7283e87740be6b912624b6ccae256d922dbf3"
    sha256               big_sur:  "5a0ce2621dc22467d244e3f5f6929bbc69eaededa412fbdf1d6e1067a3d64388"
    sha256               catalina: "081fa9581c0638a1d0e7ffcb706d611e7b3a1928bf525bc996cb9089eaf066ca"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
