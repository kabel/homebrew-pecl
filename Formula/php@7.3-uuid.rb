require_relative "../lib/php_pecl_formula"

class PhpAT73Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.1.0.tgz"
  sha256 "981c1c2fec77aaffec29242c29a346bc6ec2115053e9b6b5afb4a4e149a2333f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "e5ecab41bfa301e796a5f4887b80f19e17cfcca10e0f474e8340ea3c4fcc0a9f" => :mojave
    sha256 "61373d63a193b305c45926b91e4cad96b99757aa60580a0b56e2007f914401b1" => :high_sierra
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
