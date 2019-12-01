require_relative "../lib/php_pecl_formula"

class PhpUuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.1.0.tgz"
  sha256 "981c1c2fec77aaffec29242c29a346bc6ec2115053e9b6b5afb4a4e149a2333f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "01c49798d30d61e44533b90bc4eddeff04c4442ce1bdd791ae7a0ddfb4c2fc75" => :mojave
    sha256 "bcff22ce80587fe3079f690202e9b612b9283548b87993e3601591b018ad2f04" => :high_sierra
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
