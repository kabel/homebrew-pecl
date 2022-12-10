require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.0.tgz"
  sha256 "defe33e6f7831d82b7283b95e14a531070531acbf21278f3f0d7050505cf3395"
  revision 2
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "4901b63099fcf861fec2d1a6f66b353141ecee4f5abed91dd1d6dc35571d263f"
    sha256 cellar: :any_skip_relocation, monterey: "468efdf8e060b9c69518dbb93041df4c6a2a744d22f5af9c31a676dcc25487bf"
    sha256 cellar: :any_skip_relocation, big_sur:  "fe06addbfb7336f207927ab199c8c022429167f0ef9f1ee0fd98644699a20b8e"
    sha256 cellar: :any_skip_relocation, catalina: "411e4f635e0dce556181a17cc68cb7d47486f609b70f9acc3211063d1cad3cf7"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
