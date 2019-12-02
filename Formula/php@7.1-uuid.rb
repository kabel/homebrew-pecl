require_relative "../lib/php_pecl_formula"

class PhpAT71Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.1.0.tgz"
  sha256 "981c1c2fec77aaffec29242c29a346bc6ec2115053e9b6b5afb4a4e149a2333f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7520c5abfcd3ccf507be18ef4919696a2467c4bb062de274c36f7a0f1a039c5c" => :mojave
    sha256 "3572a6deabe98c47a201fd3fd48c4e3893d74f82c38d1c56757557d47ac716b5" => :high_sierra
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
