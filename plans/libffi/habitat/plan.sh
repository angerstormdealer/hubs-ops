pkg_name=libffi
pkg_version=3.2.1
pkg_origin=mozillareality
pkg_license=('MIT')
pkg_maintainer="Mozilla Mixed Reality <mixreality@mozilla.com>"
pkg_source=ftp://sourceware.org/pub/${pkg_name}/${pkg_name}-${pkg_version}.tar.gz
pkg_upstream_url=https://sourceware.org/libffi
pkg_description="The libffi library provides a portable, high level programming interface to various calling conventions.\
  This allows a programmer to call any function specified by a call interface description at run-time."
pkg_filename=${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
pkg_deps=(core/glibc core/libtool)
pkg_build_deps=(core/coreutils core/make core/gcc)
pkg_lib_dirs=(lib)
pkg_include_dirs=(lib/"${pkg_name}"-"${pkg_version}"/include)

do_build() {
    CFLAGS="${CFLAGS} -O2" CPPFLAGS="${CPPFLAGS} -O2" ./configure --prefix="${pkg_prefix}" --disable-multi-os-directory
    make
}
