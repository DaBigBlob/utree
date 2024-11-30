#!/bin/sh

_path="$1"

_dir=$(dirname "${_path}")
mkdir -p "${_dir}"
cd "${_dir}" || exit
_dir=$(pwd)

_file=$(basename "${_path}")
_name=${_file%.*}
if [ "${_name}" = "_" ]; then
    _name=$(basename "${_dir}")
fi
_name=$(printf "%s" "${_name}" | tr '[:lower:]' '[:upper:]')
shift

_file="${_dir}/${_file}"

{
    printf "#ifndef %s\n" "${_name}"
    printf "#define %s\n" "${_name}"
    printf " \n#endif\n"
} > "${_file}"