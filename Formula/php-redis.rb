require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ed313d9ea526c4c98bec427dd8207952adb0f051a92377e31843e02a96d18d57" => :catalina
    sha256 "fc5126a6d8949d358074be05889a8324d66f2023b810e1ecda8da53d93153c0c" => :mojave
  end
end
