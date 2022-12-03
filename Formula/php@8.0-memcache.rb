require_relative "../lib/php_pecl_formula"

class PhpAT80Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.0.tgz"
  sha256 "defe33e6f7831d82b7283b95e14a531070531acbf21278f3f0d7050505cf3395"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f70815c5a80e69b0e2a5c1c08ff9768ecacfa467af2c4ef9dd666cadad91c8c4"
    sha256 cellar: :any_skip_relocation, monterey: "eb2df9950e65b41e1a44d9038f75675dc76cb6ac1137aaa59786afc394f7d7d9"
    sha256 cellar: :any_skip_relocation, big_sur:  "ef91aee940eb5206a78913af0595cef613d9f65575ae578a80d34a28308cf814"
    sha256 cellar: :any_skip_relocation, catalina: "f1f85a8ca473b83a3bebcc40f7f1eeca9b2e00a42c74c67e60d264e4ec2b2b2a"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
