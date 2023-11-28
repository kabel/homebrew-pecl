require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  revision 1
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "a2e91cd20cf39fc35405d72d5f1a3bd2dc5f21d6b84b6aaf753db56049488cdf"
    sha256 cellar: :any_skip_relocation, ventura:  "59e729e20943f20dc3a27fa2360ca67ab76793124faa25db8ea4489b32735c60"
    sha256 cellar: :any_skip_relocation, monterey: "a5d43ba785e42aefc856c481b45b44797bb15d4333f8d4317e06e69dacd6e676"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
