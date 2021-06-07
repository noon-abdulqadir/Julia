# Autogenerated wrapper script for ZeroMQ_jll for armv7l-linux-gnueabihf-cxx11
export libzmq

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libzmq`
const libzmq_splitpath = ["lib", "libzmq.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libzmq_path = ""

# libzmq-specific global declaration
# This will be filled out by __init__()
libzmq_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libzmq = "libzmq.so.5"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"ZeroMQ")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libzmq_path = normpath(joinpath(artifact_dir, libzmq_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libzmq_handle = dlopen(libzmq_path)
    push!(LIBPATH_list, dirname(libzmq_path))

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

