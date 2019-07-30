#= The MetaModelica runtime. Partly automatically generated by the transpiler =#

#= Functions that are named   #= Defined in the runtime =# 
are defined in the C runtime in the compiler and interfaces Boehm GC. 
These functions should be remimplemented here or removed  all together
=#

#= The Info attribute provides location information for elements and classes. =#

struct SOME{T}
  data::T
end


Option{T} = Union{SOME{T}, Nothing}

#=NONE is always nothing=#
NONE() = Nothing()

#= Allow upcasting =#
Base.convert(::Type{Option{S}}, x::SOME{T})  where {S, T <: S} = let
  SOME{S}(convert(S, x.data))
end

Base.convert(::Type{Option{T}}, nothing) where {T} = let
  Nothing()
end

#= Identity case =#
Base.convert(::Type{Union{Nothing, SOME{T}}}, x::Union{Nothing, SOME{T}}) where {T} = let
  x
end

Base.convert(::Type{Union{Nothing, SOME{S}}}, x::SOME{S}) where{S} = let
  x
end

#= Logically combine two Booleans with 'and' operator =#
function boolAnd(b1::Bool, b2::Bool)::Bool
  b = b1 && b2
end

#= Logically combine two Booleans with 'or' operator =#
function boolOr(b1::Bool, b2::Bool)::Bool
  b = b1 || b2
end

#= Logically invert Boolean value using 'not' operator =#
function boolNot(b::Bool)::Bool
  nb = ! b
end

#= Compares two Booleans =#
function boolEq(b1::Bool, b2::Bool)::Bool
  b = b1 == b2
end

#= Returns \\\"true\\\" or \\\"false\\\" string =#
function boolString(b::Bool)::String
  str = if (b) "true" else "false" end
end

#= Adds two Integer values =#
function intAdd(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = i1 + i2
end

#= Subtracts two Integer values =#
function intSub(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = i1 - i2
end

#= Multiplies two Integer values =#
function intMul(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = i1 * i2
end

#= Divides two Integer values =#
function intDiv(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = div(i1, i2)
end

#= Calculates remainder of Integer division i1/i2 =#
function intMod(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = mod(i1, i2)
end

#= Returns the bigger one of two Integer values =#
function intMax(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = max(i1, i2)
end

#= Returns the smaller one of two Integer values =#
function intMin(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local i::ModelicaInteger
  i = min(i1, i2)
end

#= Returns the absolute value of Integer i =#
function intAbs(i::ModelicaInteger)::ModelicaInteger
  local oi::ModelicaInteger
  oi = abs(i)
end

#= Returns negative value of Integer i =#
function intNeg(i::ModelicaInteger)::ModelicaInteger
  local oi::ModelicaInteger
  oi = -i
end

#= Returns whether Integer i1 is smaller than Integer i2 =#
function intLt(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool
  b = i1 < i2
end

#= Returns whether Integer i1 is smaller than or equal to Integer i2 =#
function intLe(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool

  b = i1 <= i2
  b
end

#= Returns whether Integer i1 is equal to Integer i2 =#
function intEq(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool

  b = i1 == i2
  b
end

#= Returns whether Integer i1 is not equal to Integer i2 =#
function intNe(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool

  b = i1 != i2
  b
end

#= Returns whether Integer i1 is greater than or equal to Integer i2 =#
function intGe(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool

  b = i1 >= i2
  b
end

#= Returns whether Integer i1 is greater than Integer i2 =#
function intGt(i1::ModelicaInteger, i2::ModelicaInteger)::Bool
  local b::Bool
  b = i1 > i2
  b
end

#= Returns bitwise inverted Integer number of i =#
function intBitNot(i::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger
  #= Defined in the runtime =#
  o
end

#= Returns bitwise 'and' of Integers i1 and i2 =#
function intBitAnd(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger
  #= Defined in the runtime =#
  o
end

#= Returns bitwise 'or' of Integers i1 and i2 =#
function intBitOr(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger
  #= Defined in the runtime =#
  o
end

#= Returns bitwise 'xor' of Integers i1 and i2 =#
function intBitXor(i1::ModelicaInteger, i2::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger

  #= Defined in the runtime =#
  o
end

#= Returns bitwise left shift of Integer i by s bits =#
function intBitLShift(i::ModelicaInteger, s::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger

  #= Defined in the runtime =#
  o
end

#= Returns bitwise right shift of Integer i by s bits =#
function intBitRShift(i::ModelicaInteger, s::ModelicaInteger)::ModelicaInteger
  local o::ModelicaInteger

  #= Defined in the runtime =#
  o
end

#= Converts Integer to Real =#
function intReal(i::ModelicaInteger)::ModelicaReal
  float(i)
end

#= Converts Integer to String =#
function intString(i::ModelicaInteger)::String
  string(i)
end

function realAdd(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = r1 + r2
  r
end

function realSub(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = r1 - r2
  r
end

function realMul(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = r1 * r2
  r
end

function realDiv(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = r1 / r2
  r
end

function realMod(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = mod(r1, r2)
  r
end

function realPow(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal

  r = r1 ^ r2
  r
end

function realMax(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal
  r = max(r1, r2)
end

function realMin(r1::ModelicaReal, r2::ModelicaReal)::ModelicaReal
  local r::ModelicaReal
  r = min(r1, r2)
end

function realAbs(x::ModelicaReal)::ModelicaReal
  local y::ModelicaReal
  y = abs(x)
end

function realNeg(x::ModelicaReal)::ModelicaReal
  local y::ModelicaReal
  y = -x
end

function realLt(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool
  b = x1 < x2
end

function realLe(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool
  b = x1 <= x2
end

function realEq(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool
  b = x1 == x2
end

function realNe(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool
  b = x1 != x2
end

function realGe(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool

  b = x1 >= x2
  b
end

function realGt(x1::ModelicaReal, x2::ModelicaReal)::Bool
  local b::Bool

  b = x1 > x2
  b
end

function realInt(r::ModelicaReal)::ModelicaInteger
  local i::ModelicaInteger
  i = Integer(trunc(r))
end

function realString(r::ModelicaReal)::String
  local str::String
  string(str)
end

function stringCharInt(ch::String)::ModelicaInteger
  local i::ModelicaInteger

  #= Defined in the runtime =#
  i
end

function intStringChar(i::ModelicaInteger)::String
  local ch::String

  #= Defined in the runtime =#
  ch
end

function stringInt(str::String)::ModelicaInteger
  local i::ModelicaInteger

  #= Defined in the runtime =#
  i
end

#= This function fails unless the whole string can be consumed by strtod without
setting errno. For more details, see man 3 strtod =#
function stringReal(str::String)::ModelicaReal
  local r::ModelicaReal

  #= Defined in the runtime =#
  r
end

#= O(str) =#
function stringListStringChar(str::String)::List{String}
  local chars::List{String}

  #= Defined in the runtime =#
  chars
end

#= O(str) =#
function stringAppendList(strs::List{String})::String
  local str::String

  #= Defined in the runtime =#
  str
end

#= O(str)
Takes a list of strings and a string delimiter and appends all
list elements with the string delimiter inserted between elements.
Example: stringDelimitList({\\\"x\\\",\\\"y\\\",\\\"z\\\"}, \\\", \\\") => \\\"x, y, z\\\" =#
function stringDelimitList(strs::List{String}, delimiter::String)::String
  local str::String

  #= Defined in the runtime =#
  str
end

#= O(1) =#
function stringLength(str::String)::ModelicaInteger
  length(str)
end

#= O(1) =#
function stringEmpty(str::String)::Bool
  local isEmpty::Bool
  isEmpty = stringLength(str) == 0
end

#= O(1) =#
function stringGet(str::String, index::ModelicaInteger)::ModelicaInteger
  str[index]
end

#= O(1) =#
function stringGetStringChar(str::String, index::ModelicaInteger)::String
  local ch::String

  #= Defined in the runtime =#
  ch
end

#= O(n) =#
function stringUpdateStringChar(str::String, newch::String, index::ModelicaInteger)::String
  local news::String

  #= Defined in the runtime =#
  news
end

#= O(s1+s2) =#
function stringAppend(s1::String, s2::String)::String
  local s::String
  s1 * s2
end

function stringEq(s1::String, s2::String)::Bool
  local b::Bool

  b = s1 == s2
  b
end

function stringEqual(s1::String, s2::String)::Bool
  local b::Bool
  b = s1 == s2
end

function stringCompare(s1::String, s2::String)::ModelicaInteger
  local cmp::ModelicaInteger

  #= Defined in the runtime =#
  cmp
end

function stringHash(str::String)::ModelicaInteger
  local hash::ModelicaInteger

  #= Defined in the runtime =#
  hash
end

function stringHashDjb2(str::String)::ModelicaInteger
  local hash::ModelicaInteger

  #= Defined in the runtime =#
  hash
end

#= Does hashing+modulo without intermediate results. =#
function stringHashDjb2Mod(str::String, mod::ModelicaInteger)::ModelicaInteger
  local hash::ModelicaInteger

  #= Defined in the runtime =#
  hash
end

function stringHashSdbm(str::String)::ModelicaInteger
  local hash::ModelicaInteger

  #= Defined in the runtime =#
  hash
end

function substring(str::String, start #= start index, first character is 1 =#::ModelicaInteger, stop #= stop index, first character is 1 =#::ModelicaInteger)::String
  local out #= Length is stop-start+1 =#::String

  #= Defined in the runtime =#
  out #= Length is stop-start+1 =#
end

#= O(length(lst1)), O(1) if either list is empty.. needs improvment =#

function listAppend(lst1::List{T}, lst2 = list()::List{T})::List{T} where {T <: Any}
  if listEmpty(lst2)
    return lst1
  end
  if listEmpty(lst1)
    return lst2
  end
 list(lst1..., lst2...)
end

#= O(n) =#

function listReverse(inLst::List{T})::List{T} where {T <: Any}
  local outLst::List{T} = Nil{T}()
  if isa(inLst, Nil)
    return Nil{T}()
  end
  while true
    local prev::List{T}
    if isa(inLst, Nil)
      break
    end
    outLst = listHead(inLst) => outLst
    inLst = listRest(inLst)
  end
  outLst
end

function listLength(lst::List{T})::ModelicaInteger where {T <: Any}
  length(lst)
end

#= O(n) =#
function listMember(element::T, lst::List{T})::Bool where {T <: Any}
  for e in lst
    if e == element
      return true
    end
  end
  false
end

#= O(index) =#
function listGet(lst::List{T}, index #= one-based index =#::ModelicaInteger)::T where {T <: Any}
  if index == 1
    return listHead(lst)
  end
  local cntr::Integer = 0
  for i in lst
    cntr += 1
    if index == cntr
      return i
    end
  end
end

#= O(1) =#
function listRest(lst::List{T})::List{T} where {T <: Any}
  if isa(lst, Nil) nil() else lst.tail end
end

function listHead(lst::List{T})::T where {T <: Any }
  if isa(lst, Nil) nil() else lst.head end
end

#= O(index) =#
function listDelete(inLst::List{A}, index #= one-based index =#::ModelicaInteger)::List{A} where {A <: Any}
  local outLst::List{A}
  #= Defined in the runtime =#
  outLst
end

#= O(1) =#
function listEmpty(lst::List{T})::Bool where {T <: Any}
  if isa(lst, Nil) true else false end;
end

#= O(1) ? =#
function arrayLength(arr::Array{T})::ModelicaInteger where {T <: Any}
  length(arr)
end

#= O(1) =#
function arrayEmpty(arr::Array{A})::Bool where {A <: Any}
  length(arr) == 0
end

#= O(1) =#
function arrayGet(arr::Array{A}, index::ModelicaInteger)::A where {A <: Any}
  arr[index]
end

#= O(size) =#
function arrayCreate(size::ModelicaInteger, initialValue::A)::Array{A} where {A <: Any}
  fill(initialValue, size)
end

#= O(n) =#
# VERY INEFFICENT, 2000 elements and Julia dies. Not acceptable(!)

# Pattern occurs in Compiler, how to handle?
# function arrayList(arr::Array{T})::List{T} where {T <: Any}
#   local lst::List{A} = nil()
#   for i in arr
#     lst = Cons(i, lst)
#   end
#   lst
# end

#= Better =#
function arrayList(arr::Array{T})::List{T} where {T <: Any}
  list(arr...)
end

#= O(n) =#
function listArray(lst::List{T})::Array{T} where {T <: Any}
  local arr::Array{T} = []
  for i in lst
    push!(arr, i)
  end
  arr
end

#= O(1) =#
function arrayUpdate(arr::Array{A}, index::ModelicaInteger, newValue::A)::Array{A} where {A <: Any}
  local newArray #= same as the input array; used for folding =#::Array{A} = arr
  newArray[index] = newValue;
  #= Defined in the runtime =#
  newArray #= same as the input array; used for folding =#
end

#= O(n) =#
function arrayCopy(arr::Array{A})::Array{A} where {A <: Any}
  copy(arr)
end

#= Appends arr2 to arr1. O(length(arr1) + length(arr2)).
Note that this operation is *not* destructive, i.e. a new array is created. =#
function arrayAppend(arr1::Array{A}, arr2::Array{A})::Array{A} where {A <: Any}
  local arr::Array{A}

  #= Defined in the runtime =#
  arr
end

#= Returns the string representation of any value.
Rather slow; only use this for debugging! =#
function anyString(a::A)::String where {A <: Any}
  dump(a)
end

#= print(anyString(a)), but to stderr =#
function printAny(a::A) where {A <: Any}
  println(dump(a))
end

#= For RML compatibility =#
function debug_print(str::String, a::A) where {A <: Any}
  #= Defined in the runtime =#
end

global tickCounter = 0
function tick()::ModelicaInteger
  global tickCounter = tickCounter + 1
end

function equality(a1::A, a2::A) where {A <: Any}
  #= Defined in the runtime =#
end

#= Sets the index of the root variable with index 9..1023, or thread-local root variable with index 0..8.
This is a global mutable value and should be used sparingly.

You are recommended not to use 0 or false since the runtime system may treat these values as uninitialized and fail getGlobalRoot later on.
=#
function setGlobalRoot(index::ModelicaInteger, value::A) where {A <: Any}
  #= Defined in the runtime =#
end

#= The return-value is compiler-dependent on the runtime implementation of
boxed values. The number of bits reserved for the constructor is generally
between 6 and 8 bits. =#
function valueConstructor(value::A)::ModelicaInteger where {A <: Any}
  local ctor::ModelicaInteger

  #= Defined in the runtime =#
  ctor
end

#= The number of slots a boxed value has. This is dependent on sizeof(void*)
on the architecture in question. =#
function valueSlots(value::A)::ModelicaInteger where {A <: Any}
  local slots::ModelicaInteger

  #= Defined in the runtime =#
  slots
end

#= Structural equality =#
function valueEq(a1::A, a2::A)::Bool where {A <: Any}
  local b::Bool

  #= Defined in the runtime =#
  b
end

#= a1 > a2? =#
function valueCompare(a1::A, a2::A)::ModelicaInteger where {A <: Any}
  local i #= -1, 0, 1 =#::ModelicaInteger

  #= Defined in the runtime =#
  i #= -1, 0, 1 =#
end

function valueHashMod(value::A, mod::ModelicaInteger)::ModelicaInteger where {A <: Any}
  local hash::ModelicaInteger

  #= Defined in the runtime =#
  hash
end

#= This is a very fast comparison of two values which only checks if the pointers are equal. =#
function referenceEq(a1::A, a2::A)::Bool where {A <: Any}
  # Should be like this?
  a1===a2
end

#= Returns the pointer address of a reference as a hexadecimal string that can
be used for debugging. =#

function referencePointerString(ref::A)::String where {A <: Any}
  local str::String

  #= Defined in the runtime =#
  str
end

#= Use the diff to compare two time samples to each other. Not very accurate. =#
function clock()::ModelicaReal
  local t::ModelicaReal

  #= Defined in the runtime =#
  t
end

#= Returns true if the input is NONE() =#
function isNone(opt::Option{A})::Bool where {A <: Any}
  isa(opt, NONE)
end

#= Returns true if the input is SOME() =#
function isSome(opt::Option{A})::Bool where{A <: Any}
  isa(opt, SOME)
end

function listStringCharString(strs::List{String})::String
  local str::String

  #= Defined in the runtime =#
  str
end

function stringCharListString(strs::List{String})::String
  local str::String

  #= Defined in the runtime =#
  str
end

function fail()
  throw("Generic Meta Modelica failure")
end

#= Sets the stack overflow signal to the given value and returns the old one =#
function setStackOverflowSignal(inSignal::Bool)::Bool
  local outSignal::Bool

  outSignal = inSignal
  outSignal
end

function referenceDebugString(functionSymbol::A)::String where {A <: Any}
  local name::String

  #= Defined in the runtime =#
  name
end

#=TODO: I am far from sure that this will fly.. in Julia. The code generated from the transpiler is correct however=#
function isPresent(ident::T)::Bool where {T <: Any}
  local b::Bool

  b = true
  b
end

#= The Info attribute provides location information for elements and classes. =#
@Uniontype SourceInfo begin
  @Record SOURCEINFO begin
    fileName #= fileName where the class is defined in =#::String
    isReadOnly #= isReadOnly : (true|false). Should be true for libraries =#::Bool
    lineNumberStart #= lineNumberStart =#::ModelicaInteger
    columnNumberStart #= columnNumberStart =#::ModelicaInteger
    lineNumberEnd #= lineNumberEnd =#::ModelicaInteger
    columnNumberEnd #= columnNumberEnd =#::ModelicaInteger
    lastModification #= mtime in stat(2), stored as a double for increased precision on 32-bit platforms =#::ModelicaReal
  end
end


SOURCEINFO(fileName::String, isReadOnly::Bool, lineNumberStart::ModelicaInteger, columnNumberSTart::ModelicaInteger, lineNumberEnd::ModelicaInteger, columnNumberEnd::ModelicaInteger) = let
  #=No source info=#
  SOURCEINFO(fileName, isReadOnly, lineNumberStart, columnNumberSTart, lineNumberEnd, columnNumberEnd, 0.0)
end

function sourceInfo()::SourceInfo
  local info::SourceInfo
  #= Defined in the runtime =#
  info
end
