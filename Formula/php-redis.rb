require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.1.tgz"
  sha256 "c05af6254d704844303fbe8b13b2d54bdb4372b1a081934e67cac42ec79ecbbe"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c92e12604bb21fe2d191d944dc68cfa575636582b46ff4e49dd397e7ff7e30f7" => :catalina
    sha256 "b0ddd4e9af8cf11a50e7b3dffd96a7aab6f1f6d8d0d980b5f8b5b4b63367bf15" => :mojave
  end
end
