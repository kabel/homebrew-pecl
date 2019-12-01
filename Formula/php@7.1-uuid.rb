require_relative "../lib/php_pecl_formula"

class PhpAT71Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.1.0.tgz"
  sha256 "981c1c2fec77aaffec29242c29a346bc6ec2115053e9b6b5afb4a4e149a2333f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "580ee2a9be8f64eaa7a82fb9bc1a5044108ff1c8efa6456d9e27a12081f2693c" => :mojave
    sha256 "f21a3c9c99d4108fc16c56fe1e9f5524f6dae285f837781020622c3925e733d4" => :high_sierra
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
