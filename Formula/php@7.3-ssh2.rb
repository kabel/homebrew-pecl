require_relative "../lib/php_pecl_formula"

class PhpAT73Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "434b05cad7a8ae36bcb45c318b939db41c470ff5d1969a4282339de59065ff93"
    sha256 catalina: "d315f76bb3d8a0c49d24846e7ca71d496dc781eaf98bddbb9a81cd1675e73871"
    sha256 mojave:   "b6e3598656ec4963859649839265de127f4e9dd7424d86c86b6432c5d5c462af"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
