# Autogenerated wrapper script for libvorbis_jll for arm-linux-musleabihf
export libvorbisfile, libvorbisenc, libvorbis

using Ogg_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libvorbisfile`
const libvorbisfile_splitpath = ["lib", "libvorbisfile.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libvorbisfile_path = ""

# libvorbisfile-specific global declaration
# This will be filled out by __init__()
libvorbisfile_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libvorbisfile = "libvorbisfile.so.3"


# Relative path to `libvorbisenc`
const libvorbisenc_splitpath = ["lib", "libvorbisenc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libvorbisenc_path = ""

# libvorbisenc-specific global declaration
# This will be filled out by __init__()
libvorbisenc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libvorbisenc = "libvorbisenc.so.2"


# Relative path to `libvorbis`
const libvorbis_splitpath = ["lib", "libvorbis.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libvorbis_path = ""

# libvorbis-specific global declaration
# This will be filled out by __init__()
libvorbis_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libvorbis = "libvorbis.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Ogg_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Ogg_jll.LIBPATH_list,))

    global libvorbisfile_path = abspath(joinpath(artifact"libvorbis", libvorbisfile_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libvorbisfile_handle = dlopen(libvorbisfile_path)
    push!(LIBPATH_list, dirname(libvorbisfile_path))

    global libvorbisenc_path = abspath(joinpath(artifact"libvorbis", libvorbisenc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libvorbisenc_handle = dlopen(libvorbisenc_path)
    push!(LIBPATH_list, dirname(libvorbisenc_path))

    global libvorbis_path = abspath(joinpath(artifact"libvorbis", libvorbis_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libvorbis_handle = dlopen(libvorbis_path)
    push!(LIBPATH_list, dirname(libvorbis_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

