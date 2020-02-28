set -e
unset PATH
for p in $baseInputs $buildInputs; do
	echo "GO: $p"
	export PATH=$p/bin${PATH:+:}$PATH
done

tar xf $src

for d in *; do
	if [ -d "$d" ]; then
		cd "$d"
		break
	fi
done

./configure --prefix=$out
make
make install
find $out -type f -exec patchelf --shrink-rpath '{}' \; -exec strip '{}' \;
