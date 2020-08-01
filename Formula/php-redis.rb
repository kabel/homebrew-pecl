require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.1.tgz"
  sha256 "7c29e49c5cbc6b54ccccc00b44fac4d3ed9895e5718fcf62a5b06281dda8809d"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ed313d9ea526c4c98bec427dd8207952adb0f051a92377e31843e02a96d18d57" => :catalina
    sha256 "fc5126a6d8949d358074be05889a8324d66f2023b810e1ecda8da53d93153c0c" => :mojave
  end
end
