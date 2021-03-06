require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "30f3fed2997c51ab7649e02ffa1eec98d4795fd723f92ee876962ebd03c035b5" => :catalina
    sha256 "068d641952fdc1ff462821c3b7ad5d56f05141206e7fcf3da8d76a83510b476b" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
