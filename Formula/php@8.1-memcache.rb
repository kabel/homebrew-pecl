require_relative "../lib/php_pecl_formula"

class PhpAT81Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f216f6d0eba727ead25a23c0fcfa1fe933dd19e6ada98e938f67adc2c1a30d5c"
    sha256 cellar: :any_skip_relocation, monterey: "4a4f9f0d4f3706cd2de26100033982a7fb8aaedf206f3173e9f9fd88ba57b0d3"
    sha256 cellar: :any_skip_relocation, big_sur:  "b5a54078978ef6509e266796981cd3872532d0d70e20cef0af0c0d6ffa3f23c5"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
