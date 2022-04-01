require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.2.tgz"
  sha256 "c338afd29259f0093f07f4e99b80705a2d5bb046c7ab32e5938eef29bbb63a6e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "540280082ca62903952c853715557c3dae755ce608212f543633aa3b92ec7c47"
    sha256 cellar: :any, big_sur:  "8ef27a0c91a5d404a3c02b8418d4f4eef23945f6921cdf31e849f2733d6903b2"
    sha256 cellar: :any, catalina: "9523fc94b658ef671dc607f8c3ff929e1879e1752f267c0c52d5a0dce8759f8e"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
