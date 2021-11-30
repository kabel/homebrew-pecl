require_relative "../lib/php_pecl_formula"

class PhpAT80Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.0.tgz"
  sha256 "defe33e6f7831d82b7283b95e14a531070531acbf21278f3f0d7050505cf3395"
  revision 1
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "68b626e8eea31e1ba55351ea2ee38ef07f2d355373644011b404080477a50cd2"
    sha256 cellar: :any_skip_relocation, catalina: "400a95f241da88dadd982b723181ec3fd372e8c21016744d72bf3df39c633d19"
    sha256 cellar: :any_skip_relocation, mojave:   "c6a295970aec777d57b5851d2187770a167aca7a29bc7b330699c3c972d8ec8f"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
