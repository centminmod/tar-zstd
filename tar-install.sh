#!/bin/bash
###################################################
DT=$(date +"%d%m%y-%H%M%S")
DIR_TMP='/svr-setup'
CENTMINLOGDIR='/root/centminlogs'
TAR_MASTER='n'
TARRPM_VER='1.34'
TARRPM_NAME='tar-zstd'

# RPM related
BUILTRPM='y'
RPMSAVE_PATH="$DIR_TMP"
# whether to test install the RPMs build
# or just build RPMs without installing
GCC_YUMINSTALL='y'

# GCC compiler
DEVTOOLSET_TAR_11='n'
DEVTOOLSET_TAR_10='n'
DEVTOOLSET_TAR_9='y'
###################################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
###################################################
CENTOSVER=$(awk '{ print $3 }' /etc/redhat-release)

if [ -f tar-install.ini ]; then
  source tar-install.ini
fi

if [ "$CENTOSVER" == 'release' ]; then
    CENTOSVER=$(awk '{ print $4 }' /etc/redhat-release | cut -d . -f1,2)
    if [[ "$(cat /etc/redhat-release | awk '{ print $4 }' | cut -d . -f1)" = '7' ]]; then
        CENTOS_SEVEN='7'
    fi
fi

if [[ "$(cat /etc/redhat-release | awk '{ print $3 }' | cut -d . -f1)" = '6' ]]; then
    CENTOS_SIX='6'
fi

# Check for Redhat Enterprise Linux 7.x
if [ "$CENTOSVER" == 'Enterprise' ]; then
    CENTOSVER=$(awk '{ print $7 }' /etc/redhat-release)
    if [[ "$(awk '{ print $1,$2 }' /etc/redhat-release)" = 'Red Hat' && "$(awk '{ print $7 }' /etc/redhat-release | cut -d . -f1)" = '7' ]]; then
        CENTOS_SEVEN='7'
        REDHAT_SEVEN='y'
    fi
fi

if [[ -f /etc/system-release && "$(awk '{print $1,$2,$3}' /etc/system-release)" = 'Amazon Linux AMI' ]]; then
    CENTOS_SIX='6'
fi

if [[ "$CENTOS_SIX" -eq '6' ]]; then
  DISTTAG='el6'
elif [[ "$CENTOS_SEVEN" -eq '7' ]]; then
  DISTTAG='el7'
fi

if [ ! -d "$CENTMINLOGDIR" ]; then
  mkdir -p "$CENTMINLOGDIR"
fi

{
if [[ ! -f $(which fpm) ]]; then
  if [[ "$(rpm -ql ruby-devel gcc make rpm-build rubygems | egrep -o 'gcc|ruby-devel|make|rpmbuild|rubygems' | sort -u | xargs)" != 'gcc make rpmbuild ruby-devel rubygems' ]]; then
    yum -y install ruby-devel gcc make rpm-build rubygems
    yum -y install libacl-devel texi2html texinfo lzop
  fi
  gem install fpm
  fpm --version
fi

if [[ "$DEVTOOLSET_TAR_11" = [yY] && -f /opt/rh/devtoolset-11/root/usr/bin/gcc && -f /opt/rh/devtoolset-11/root/usr/bin/g++ ]]; then
  label='-gcc11'
  source /opt/rh/devtoolset-11/enable
  export CFLAGS="-Wimplicit-fallthrough=0 -fcode-hoisting -Wno-cast-function-type -Wno-cast-align -Wno-implicit-function-declaration -Wno-builtin-declaration-mismatch -Wno-int-conversion -Wno-unused-result -Wno-unused-result -Wno-vla-parameter -Wno-maybe-uninitialized -Wno-array-bounds -Wno-stringop-overread -Wno-missing-profile -Wno-analyzer-null-argument -Wno-unused-macros -Wno-old-style-definition -Wno-strict-prototypes -Wno-format-overflow"
  export CXXFLAGS="${CFLAGS}"
  export CC="gcc"
  export CXX="g++"
elif [[ "$DEVTOOLSET_TAR_10" = [yY] && -f /opt/rh/devtoolset-10/root/usr/bin/gcc && -f /opt/rh/devtoolset-10/root/usr/bin/g++ ]]; then
  label='-gcc10'
  source /opt/rh/devtoolset-10/enable
  export CFLAGS="-Wimplicit-fallthrough=0 -fcode-hoisting -Wno-cast-function-type -Wno-cast-align -Wno-implicit-function-declaration -Wno-builtin-declaration-mismatch -Wno-int-conversion -Wno-unused-result -Wno-unused-result -Wno-vla-parameter -Wno-maybe-uninitialized -Wno-array-bounds -Wno-stringop-overread -Wno-missing-profile -Wno-analyzer-null-argument -Wno-unused-macros -Wno-old-style-definition -Wno-strict-prototypes -Wno-format-overflow"
  export CXXFLAGS="${CFLAGS}"
  export CC="gcc"
  export CXX="g++"
elif [[ "$DEVTOOLSET_TAR_9" = [yY] && -f /opt/rh/devtoolset-9/root/usr/bin/gcc && -f /opt/rh/devtoolset-9/root/usr/bin/g++ ]]; then
  label='-gcc9'
  source /opt/rh/devtoolset-9/enable
  export CFLAGS="-Wimplicit-fallthrough=0 -fcode-hoisting -Wno-cast-function-type -Wno-cast-align -Wno-implicit-function-declaration -Wno-builtin-declaration-mismatch"
  export CXXFLAGS="${CFLAGS}"
elif [[ -f /opt/rh/devtoolset-8/root/usr/bin/gcc && -f /opt/rh/devtoolset-8/root/usr/bin/g++ ]]; then
  label='-gcc8'
  source /opt/rh/devtoolset-8/enable
  export CFLAGS="-Wimplicit-fallthrough=0 -fcode-hoisting -Wno-cast-function-type -Wno-cast-align -Wno-implicit-function-declaration -Wno-builtin-declaration-mismatch"
  export CXXFLAGS="${CFLAGS}"
elif [[ -f /opt/rh/devtoolset-7/root/usr/bin/gcc && -f /opt/rh/devtoolset-7/root/usr/bin/g++ ]]; then
  label='-gcc7'
  source /opt/rh/devtoolset-7/enable
  export CFLAGS="-Wimplicit-fallthrough=0 -fcode-hoisting -Wno-cast-function-type -Wno-cast-align -Wno-implicit-function-declaration -Wno-builtin-declaration-mismatch"
  export CXXFLAGS="${CFLAGS}"
else
  label=""
fi
cd /svr-setup
if [ -d tar ]; then
  rm -rf tar
fi
git clone https://git.savannah.gnu.org/git/tar.git
cd tar
if [[ "$TAR_MASTER" = [nN] ]]; then
  tagtar=$(git tag -l | grep release | tail -1)
  TARRPM_VER=$(echo $tagtar | sed -e 's|_|.|g' -e 's|release.||')
  git checkout $tagtar -b local-${TARRPM_VER}
fi
export FORCE_UNSAFE_CONFIGURE=1
# reduce automake 1.15 min version requirements
# https://git.savannah.gnu.org/cgit/tar.git/commit/?id=0836a5114770e12ef4f4ebb3972868ba844f43f5
sed -i 's|AM_INIT_AUTOMAKE(\[1.15|AM_INIT_AUTOMAKE(\[1.13.4|' configure.ac
# patch 1.33 start
# wget -4 -O devfull.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=e4d1edadefdeefcca3b72ec32744c52020fe4642
# wget -4 -O stdopen.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=0b43ea2906432873416576cb90608f72b6fbf18a
# wget -4 -O delarchivemember.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=8e2898ab11f687aefb4d1deb9f27295e6a1080a1
# wget -4 -O regress1.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=972bebf07e7ec6a259efca9ed58c3b8ca121ea6e
# wget -4 -O improparg.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=2251317e3fe971fd34608cf312c8120141d8fce4
# wget -4 -O memleak.patch https://git.savannah.gnu.org/cgit/tar.git/patch/?id=d9d4435692150fa8ff68e1b1a473d187cc3fd777
# patch -p1 < devfull.patch
# patch -p1 < stdopen.patch
# patch -p1 < delarchivemember.patch
# patch -p1 < regress1.patch
# patch -p1 < improparg.patch
# patch -p1 < memleak.patch
# patch 1.33 end
time ./bootstrap
time ./configure
time make -j$(nproc)
time make check
time make install
tar_install_check=$?

if [[ "$BUILTRPM" = [Yy] && "$tar_install_check" -eq '0' ]]; then
  echo
  echo "build tar zstd rpm"
  
  if [ -f /usr/bin/xz ]; then
      FPMCOMPRESS_OPT='--rpm-compression xz'
  else
      FPMCOMPRESS_OPT='--rpm-compression gzip'
  fi
  
  mkdir -p /tmp/tar_installdir
  make install DESTDIR=/tmp/tar_installdir
  echo
  if [[ "$TAR_MASTER" = [yY] ]]; then
    label="${label}-2021.10.13"
    echo -e "* $(date +"%a %b %d %Y") George Liu <centminmod.com> $TARRPM_VER\n - tar $TARRPM_VER 2021.10.13 zstd supported for centminmod.com LEMP stack\n- latest tar git master build 2021.10.13\n* $(date +"%a %b %d %Y") George Liu <centminmod.com> 1.34\n- Fix extraction over pipe (savannah bug #60002)\n- Fix memory leak in read_header (savannah bug #59897)\n- Fix extraction when . and .. are unreadable\n  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00012.html\n- Gracefully handle duplicate symlinks when extracting\n  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00026.html\n- Re-initialize supplementary groups when switching to user privileges" > "${TARRPM_NAME}-${TARRPM_VER}-changelog"
  else
    echo -e "* $(date +"%a %b %d %Y") George Liu <centminmod.com> $TARRPM_VER\n - tar $TARRPM_VER zstd supported for centminmod.com LEMP stack\n- Fix extraction over pipe (savannah bug #60002)\n- Fix memory leak in read_header (savannah bug #59897)\n- Fix extraction when . and .. are unreadable\n  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00012.html\n- Gracefully handle duplicate symlinks when extracting\n  See https://lists.gnu.org/archive/html/bug-tar/2021-01/msg00026.html\n- Re-initialize supplementary groups when switching to user privileges" > "${TARRPM_NAME}-${TARRPM_VER}-changelog"
  fi
  # 1.33
  #echo -e "* $(date +"%a %b %d %Y") George Liu <centminmod.com> $TARRPM_VER\n - tar $TARRPM_VER zstd supported for centminmod.com LEMP stack\n- Fix memory leak in read_header CVE-2021-20193 patch fixed" > "${TARRPM_NAME}-${TARRPM_VER}-changelog"
  fpm -f -s dir -t rpm -n ${TARRPM_NAME}${label} -v $TARRPM_VER $FPMCOMPRESS_OPT --rpm-changelog "${TARRPM_NAME}-${TARRPM_VER}-changelog" --rpm-summary "tar $TARRPM_VER zstd supported for centminmod.com LEMP stack" --rpm-dist ${DISTTAG}  -m "<centminmod.com>" --description "tar $TARRPM_VER zstd supported for centminmod.com LEMP stack" --url https://centminmod.com -p $DIR_TMP -C /tmp/tar_installdir
  fpm_build_check=$?
  if [[ "$fpm_build_check" -eq '0' ]]; then
    echo
    echo "ls -lah $DIR_TMP | grep '${TARRPM_NAME}${label}'"
    ls -lah "$DIR_TMP" | grep "${TARRPM_NAME}${label}"
    if [[ "$GCC_YUMINSTALL" = [yY] ]]; then
      echo
      rpm -e "${TARRPM_NAME}${label}"
      echo
      echo "yum -y localinstall ${DIR_TMP}/${TARRPM_NAME}${label}-${TARRPM_VER}-1.${DISTTAG}.x86_64.rpm"
      yum -y localinstall ${DIR_TMP}/${TARRPM_NAME}${label}-${TARRPM_VER}-1.${DISTTAG}.x86_64.rpm
      echo
      yum -q info "${TARRPM_NAME}${label}-${TARRPM_VER}"
      echo
      rpm -qa --changelog "${TARRPM_NAME}${label}"
    else
      echo "error: fpm rpm build failed"
    fi
  fi
else
  echo "error: tar install failed"
fi
} 2>&1 | tee "${CENTMINLOGDIR}/tar_rpmbuild_install_${DT}.log"