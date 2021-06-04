require_relative "../lib/php_pecl_formula"

class PhpMemprof < PhpPeclFormula
  extension_dsl "Memprof is a fast and accurate memory profiler that can be used to find the cause of memory leaks in PHP applications"

  url "https://pecl.php.net/get/memprof-3.0.0.tgz"
  sha256 "3ea040f59f828fe6999ffa6ff1a6762a457f5c6af6ccfb1614ace884cc19dd82"
  license "BSD-2-Clause"
end
