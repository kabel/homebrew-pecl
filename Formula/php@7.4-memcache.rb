require_relative "../lib/php_pecl_formula"

class PhpAT74Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-4.0.5.2.tgz"
  sha256 "7b7667813baea003671f174bbec849e43ff235a8ea4ab7e36c3a0380c2a9ed63"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "abca39bd11903eb954d5d94d3ee700db9f1a6578706ef5d8736400494fd11fb0"
    sha256 cellar: :any_skip_relocation, monterey: "9ef4e051c6e8189f50054e89448706de2298d27a42a5c1a02509c869279a3bab"
    sha256 cellar: :any_skip_relocation, big_sur:  "50d09dfec3fb02b105f0c171c34a3711dc9e199ca61c0d3ed3d2089ae523a21a"
    sha256 cellar: :any_skip_relocation, catalina: "af17f29041e74521009e34e159234e1f47900cdfac9990474364b9edf7040e58"
    sha256 cellar: :any_skip_relocation, mojave:   "27c744851bb61773f9268009c0a4438fe1e7dda44ad25aa81369f15d2ca8aa14"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
