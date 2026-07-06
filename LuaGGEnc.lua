
-- // # github.com/islavikfx

gg.skipRestoreState()
gg.setVisible(false)
gg.clearResults()
gg.clearList()
io.flush()


::HOME::
data = gg.prompt({'file', 'path', 'exit',},
{gg['EXT_STORAGE'], gg['EXT_STORAGE']},{'file', 'path', 'checkbox'})

if (not data) then goto await end
if data[3] == true then return os.exit() end

code = io.open(data[1], 'r'):read('*all')
temp = data[2] .. '/temp.enc'

if not load(code) or code == nil then
gg.alert('⚠️ Failed to load source code, check your input file.')
goto await end


-- // AntiSS Spam Code (kill some decompile tools).
ANTISS = {
[[
while (nil) do
for x = 0, 1, 0 do
q = nil % nil % nil % nil % (nil % -nil) % -nil
q[nil] = (-nil % nil) * (0 * (nil % nil)) % q[nil]()
if q ~= nil then q[nil] = (-nil) % q[nil]() % q[-nil]()
((-nil) % (nil | nil | nil | nil) % (-nil) % q[nil % nil]())
(q.q[nil])() % (nil | -nil | nil | -nil) % x[q(q % -nil) % nil]() end end end
while (nil) do b = {nil, nil % nil, nil, nil, nil % nil}
if #b < 0 then break end;
if b[#b] < 0 then break end;
if b[nil] < 0 then break end;
if #b[nil] ~= nil then break end;
if b ~= nil then b = b[nil]()
b[#b] = b[nil](); b[nil] = b[nil]()
b[#b % #b] = b[nil % nil % nil]() end; end
while (nil) do c = {nil, nil % nil, nil, nil % nil}
if c[nil] ~= #c then c[#c] = c[nil]() % c[nil]()
if #c ~= #b then c[#b] = b[nil]() % c[nil]() break end; end
if #c ~= nil then c[#c % #b] = #c * 0x0 % #b % b[nil % nil | -nil]() % #b end
if #b ~= nil then b[#b % #c] = #b * 0x0 % #b % c[nil % nil | -nil]() % #c end; end
]], [[
while (nil) do
x = {nil % nil % nil, nil % nil} * -0x1
if #x < nil then x[#x] = x[nil]() break end;
if nil or 0 then x[#b % #c] = b[#b % nil]() * 0x0
x[#c % #b] = c[#c % nil]() * 0x0
m = x[nil | nil]() % c[nil | nil]() % b[nil % nil % nil]() break end;
i = nil % nil * #c[#b % #x % nil]
for m in ipairs(i) do
i = {{nil % nil % nil % nil % nil % nil * 0x0},
{nil % nil % nil % nil % nil % nil / 0x0}}
i.i = {(nil % nil % nil | nil | -1)} end; end
]],[[
while (nil) do
d = i[nil]() % x[#b % #b % #c % #c % #x % #x]() % (-nil)
d[nil] = #d[nil % nil % nil % nil % nil]()
d[#c % #x] = #d[nil % #d]() % #m[nil % #m]()
if nil then break end; end while (nil) do
d = d():d(#d % #m % b % c % x) % (d * -1)
d[nil % nil % nil % nil] = d[#i]() % d[#i]()
if d ~= nil then return end if d ~= nil then break end
if #d < 0x0 then return end if #d[nil] < 0x0 then break end; end
while (nil) do d[#b | #c % #x % #i | #m] = d[#d]() % nil % d[-nil]() break end
if d ~= nil then c = nil % nil; c:c(nil | nil * 0x0); c = c() .. c | nil
c = c:c(c()(nil)) ::aVc:: goto aVc end
]]
}


-- // AntiLoad Paste (prevent unusual script load).
ANTILOAD = '\n' .. [[
aa9RE = gg.getRangesList('/data/')
aa6Cv = aa9RE[1]['start']
aa2Cn = math.random(0xfff, 0xffff)
aa5gZ = { }; for i = 1, aa2Cn do
aa5gZ[i] = {['address'] = aa6Cv + (i - 0x1) * 0x4, ['flags'] = 0x20} end
aa2Vm = gg.getValues(aa5gZ)
aaC2b = ('return (function(nil)) end\n'):rep(math.random(0x3c, 0x5a))
aa8Wb = ('return (function(...)) end\n'):rep(math.random(0x3c, 0x5a))
load(tostring(aaC2b)); load(tostring(aa8Wb))
if (not gg['BUILD']) then ::dWb:: goto dWb end
function aa0gW(aa1Cz, aa6cV, aa5Lq)
for aa3Fd = 0x1, 0xffff do
aa3Bw = ('')['char'](math.random(0xff, 0xfff))
gg.loadResults(aa3Bw, aa3Bw, aa3Bw, aa3Bw)
return aa3Bw end return '(aa0gW())' end
aa8FF = function(aa2Cq) aa0dd = 0; aa6Hx = function(aa4Bo)
aa3Cu = aa0dd + 0x1; aa0dd = aa3Cu; return aa3Wt[aa0dd] end
return aa6Hx end aa3Wt = {' ', ' ', ' '}
assert(load(aa8FF(aa3Wt)))()
string['format']('0x%08x', gg.allocatePage(gg['PROT_READ'], 0xffff))
gg.disasm(gg['ASM_THUMB'], 0xfff, 0xffff)
gg.getActiveTab() gg.processResume()
]]

if not load(ANTILOAD) then gg.alert('⚠️ ANTILOAD.')
goto await end


-- // AntiLog Paste (prevent typical logggers, log dump, script in script load).
ANTILOG = '\n' .. [[
gg.clearResults(); gg.clearList()
if tostring(('%s%s%s'):format(gg, io, table)):find('@') then ::zBQ:: goto zBQ end
dd6mA = 0; dd7vC = os.clock()
dd2Fx = math['random']
dd0vW = gg['refineAddress']
local dd6mA = ('')['char'](
dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'),
dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'),
dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'), dd2Fx(dd6mA, '255'),
dd2Fx(dd6mA, '255')) dd2Fx = 1
for i = dd2Fx, '20' do dd6mA = dd6mA .. dd6mA end
for i = dd2Fx, '50' do dd0vW(dd6mA, dd6mA, dd6mA, dd6mA, dd6mA, dd6mA, dd6mA) end
if os.clock() - dd7vC > 10.00 then ::bZJ:: goto bZJ end
]]

if not load(ANTILOG) then gg.alert('⚠️ ANTILOG.')
goto await end


-- // AntiHook Paste (prevent functions hook, changed table, io, gg etc.).
ANTIHOOK = '\n' .. [[
ww6Cz = '@@@@'
if debug['sethook']() ~= nil then ::gCv:: goto gCv end
if string['rep']('@', 0x4) ~= ww6Cz then ::bZn:: goto bZn end
f = {'gg','os','io','table','debug','string'}
for _, ww8Bh in ipairs(f) do
if string['find'](tostring(ww8Bh), '@') then ::vCz:: goto vCz end end
for _, ww2Ja in ipairs({'gg','io','os','math','debug','table'}) do
if string['match'](tostring(ww2Ja), '@') then
while (true) do ::nqb:: goto nqb end end end
ww8Cz = 'short_src'
ww0li = {debug['getinfo'](print).ww8Cz,
debug['getinfo'](gg['alert']).ww8Cz,
debug['getinfo'](gg['toast']).ww8Cz,
debug['getinfo'](gg['setValues']).ww8Cz,
debug['getinfo'](gg['getResults']).ww8Cz,
debug['getinfo'](gg['refineNumber']).ww8Cz,
debug['getinfo'](gg['refineAddress']).ww8Cz,}
for i, ww6Jx in pairs(ww0li) do
if ww6Jx ~= 'print' and ww6Jx ~= 'setValues' and ww6Jx ~= 'getResults' and ww6Jx ~= ww0li(1).ww8Cz then while (true) do ::hlo:: goto hlo end; end; end
ww6fr = {} for x = 0x1, 0x12c0 do
ww6fr[x] = string['rep'](utf8['char'](x), 0x64) end
for x, ww8HX in pairs({
debug['getregistry'], debug['getuservalue'], debug['setuservalue'],
debug['getupvalue'], debug['getinfo'], debug['getlocal'],
debug['setlocal'], debug['setupvalue'], debug['traceback'],
debug['getmetatable'], debug['setmetatable'], debug['debug'],
debug['upvaluejoin'], debug['sethook'], debug['gethook'],
debug['upvalueid']}) do pcall(ww8HX, ww6fr) end
function ww0vC(ww6fr) return end
]] .. ''

if not load(ANTIHOOK) then gg.alert('⚠️ ANTIHOOK.')
goto await end


-- // Randomized fake code paste in middle block.
FAKECODE1 = (' �� @ ���K  @�'):rep(math.random(0x4b, 0x6e))
FAKECODE2 = (' R @ �� � @ ��'):rep(math.random(0x4b, 0x6e))
FAKECODE3 = (' * @ ��Fm� % A �@'):rep(math.random(0x4b, 0x6e))
FAKECODE4 = (' ��! �@@a � �� B &�'):rep(math.random(0x4b, 0x6e))


-- // Connect everything.
FAKES1 = FAKECODE4 .. '\n' .. FAKECODE2
FAKES2 = FAKECODE3 .. '\n' .. FAKECODE1
PASTE1 = "t = [["
PASTE2 = "]]" .. "\n"
FAKE1 = PASTE1 .. FAKES1 .. PASTE2
FAKE2 = PASTE1 .. FAKES2 .. PASTE2
ANTILOG = FAKE1 .. ANTILOG
ANTIHOOK = FAKE2 .. ANTIHOOK
PROTECT = ANTILOAD .. ANTILOG .. ANTIHOOK


-- // Randomized key for every file (you cant make normal SS Tool for this ENC because all new files will be different).
KEY1 = math.random(0x7d, 0xff)
KEY2 = math.random(0x7d, 0xff)
KEY3 = KEY1 + KEY2 + math.random(0xff, 0x172)


-- // Paste good OBF formule.
LOAD = [[
]] .. ANTISS[1] .. [[
local x = x; local a = 1; local j = 0; local b = x;
local u = ''; local k = a; local z = 256-j;
]] .. ANTISS[2] .. [[
local F = { }; for i = k-k-j, z-a+j do F[i] = ('')['char'](i) end
]] .. ANTISS[3] .. [[
local KEY2 = ]] .. KEY2 .. '\n' .. [[
local KEY1 = ]] .. KEY1 .. '\n' .. [[
]] .. ANTISS[2] .. [[
local KEY3 = ]] .. KEY3 .. '\n' .. [[
]] .. ANTISS[1] .. [[
local KEY1 = KEY1
local KEY2 = KEY2
]] .. ANTISS[2] .. [[
local _G = _G
local _ENV = _ENV
local KEY3 = KEY3
]] .. ANTISS[3] .. [[
local function ENC(c)
local r=u; local k=k; local p=#c-k;
for i = k, p, a do
r = r .. F[(c[i] - KEY3 + p % i * a * KEY2 - KEY1 * c[#c]) % z] end
return r end
]] .. ANTISS[1] .. [[]]
load(LOAD:gsub('local ', ''))()

if not load(LOAD) then gg.alert('⚠️ Formule.')
goto await end


-- // Credits to ENC file.
info = '\n\n\n' ..  "str = {\n'"
info = info .. '** ' .. os.date('%Y/%m/%d') .. ' • ' .. os.date('(%X)') .. "',\n"
info = info .. "'** Encrypted by @islavikfx'\n"
info = info .. '}\n\n' .. "gg.toast('Protected by @islavikfx:)')\n\n"


sstr = {
[1] = "%[%[(.-)%]%]",
[2] = "%'(.-)%'",
[3] = '%"(.-)%"'
}


-- // Hiding with _G and _ENV some not obf gg methods, regions, types.
rollback = {
 [1] = "gg.TYPE_BYTE",
 [2] = "gg.TYPE_WORD",
 [3] = "gg.TYPE_DWORD",
 [4] = "gg.TYPE_XOR",
 [5] = "gg.TYPE_FLOAT",
 [6] = "gg.TYPE_QWORD",
 [7] = "gg.TYPE_DOUBLE",
 [8] = "gg.TYPE_AUTO",
 [9] = "gg.REGION_JAVA_HEAP",
 [10] = "gg.REGION_C_HEAP",
 [11] = "gg.REGION_C_ALLOC",
 [12] = "gg.REGION_C_DATA",
 [13] = "gg.REGION_C_BSS",
 [14] = "gg.REGION_PPSSPP",
 [15] = "gg.REGION_ANONYMOUS",
 [16] = "gg.REGION_JAVA",
 [17] = "gg.REGION_STACK",
 [18] = "gg.REGION_ASHMEM",
 [19] = "gg.REGION_VIDEO",
 [20] = "gg.REGION_OTHER",
 [21] = "gg.REGION_BAD",
 [22] = "gg.REGION_CODE_APP",
 [23] = "gg.REGION_CODE_SYS",
 [24] = "gg.SIGN_EQUAL",
 [25] = "gg.SIGN_FUZZY_EQUAL",
 [26] = "gg.SIGN_FUZZY_GREATER",
 [27] = "gg.SIGN_FUZZY_LESS",
 [28] = "gg.SIGN_FUZZY_NOT_EQUAL",
 [29] = "gg.SIGN_GREATER_OR_EQUAL",
 [30] = "gg.SIGN_LESS_OR_EQUAL",
 [31] = "gg.SIGN_NOT_EQUAL",
 [32] = "gg.clearResults",
 [33] = "gg.getResultsCount",
 [34] = "gg.getResults",
 [35] = "gg.setRanges",
 [36] = "gg.refineAddress",
 [37] = "gg.searchNumber",
 [38] = "gg.refineNumber",
 [39] = "gg.alert",
 [40] = "gg.toast",
}

redo = {
 [1] = '_G["gg"]["TYPE_BYTE"]',
 [2] = '_G["gg"]["TYPE_WORD"]',
 [3] = '_G["gg"]["TYPE_DWORD"]',
 [4] = '_G["gg"]["TYPE_XOR"]',
 [5] = '_G["gg"]["TYPE_FLOAT"]',
 [6] = '_G["gg"]["TYPE_QWORD"]',
 [7] = '_G["gg"]["TYPE_DOUBLE"]',
 [8] = '_G["gg"]["TYPE_AUTO"]',
 [9] = '_G["gg"]["REGION_JAVA_HEAP"]',
 [10] = '_G["gg"]["REGION_C_HEAP"]',
 [11] = '_G["gg"]["REGION_C_ALLOC"]',
 [12] = '_G["gg"]["REGION_C_DATA"]',
 [13] = '_G["gg"]["REGION_C_BSS"]',
 [14] = '_G["gg"]["REGION_PPSSPP"]',
 [15] = '_G["gg"]["REGION_ANONYMOUS"]',
 [16] = '_G["gg"]["REGION_JAVA"]',
 [17] = '_G["gg"]["REGION_STACK"]',
 [18] = '_G["gg"]["REGION_ASHMEM"]',
 [19] = '_G["gg"]["REGION_VIDEO"]',
 [20] = '_G["gg"]["REGION_OTHER"]',
 [21] = '_G["gg"]["REGION_BAD"]',
 [22] = '_G["gg"]["REGION_CODE_APP"]',
 [23] = '_G["gg"]["REGION_CODE_SYS"]',
 [24] = '_G["gg"]["SIGN_EQUAL"]',
 [25] = '_G["gg"]["SIGN_FUZZY_EQUAL"]',
 [26] = '_G["gg"]["SIGN_FUZZY_GREATER"]',
 [27] = '_G["gg"]["SIGN_FUZZY_LESS"]',
 [28] = '_G["gg"]["SIGN_FUZZY_NOT_EQUAL"]',
 [29] = '_G["gg"]["SIGN_GREATER_OR_EQUAL"]',
 [30] = '_G["gg"]["SIGN_LESS_OR_EQUAL"]',
 [31] = '_G["gg"]["SIGN_NOT_EQUAL"]',
 [32] = '_ENV["gg"]["clearResults"]',
 [33] = '_ENV["gg"]["getResultsCount"]',
 [34] = '_ENV["gg"]["getResults"]',
 [35] = '_ENV["gg"]["setRanges"]',
 [36] = '_ENV["gg"]["refineAddress"]',
 [37] = '_ENV["gg"]["searchNumber"]',
 [38] = '_ENV["gg"]["refineNumber"]',
 [39] = '_ENV["gg"]["alert"]',
 [40] = '_ENV["gg"]["toast"]',
}


for def, concat in pairs(rollback) do
code = code:gsub(concat, redo[def]) end
file = assert(io.open(temp, 'wb'))
file:write(tostring(info .. code)):close()
CODE = io.open(temp, 'r'):read("*a")
os.remove(temp)


-- // Main OBF fnc.
function OBF(c)
local c = {c:byte(1, -1)} local f = 2 local s = 1;
local KEY4 = math.random(-826450, -281350)
for i = f-s, #c do
c[i] = (c[i] + KEY3 - #c % i * s * KEY2 + KEY1 * KEY4) % -256 end
c[#c + s] = KEY4
return "{" .. table.concat(c, ",") .. "}"
end


-- // Processing.
CODE = PROTECT .. CODE
CODE = CODE:gsub("(%S-%s+)function (%w+%.-%w-)%(",function(a, b) if not a:match("local") then return a .. " _G['"..b:gsub("%.","']['").."']=function(" end end)
while CODE:match("%s(%w+%.%w+)%s-%=%s-") do
CODE = CODE:gsub(CODE:match("%s(%w+%.%w+)%s-%=%s-"),function(x) return "_G['"..x:gsub("%.","']['").."']" end) end
CODE = CODE:gsub("(%w+)(%[%[.-%]%])",function(a, b) return a.."("..b..")" end)


obftable = {"gg","os","io","math","debug","string","table","utf8"}
for i in ipairs(obftable) do
CODE = CODE:gsub(obftable[i] .. "%.(%S-)%(",function(x) return "_G['"..obftable[i].."']['"..x.."'](" end) end


for i = 1, #sstr do
CODE = CODE:gsub(sstr[i], function(c) return "ENC(" .. OBF(c:gsub([[\t]] ,("")['char'](9)):gsub([[\n]] ,("")['char'](10))).. ")" end) end


-- // Paste.
CODE = LOAD .. '\n' .. CODE
CODE = [[local w5fAv = {0, (function(...)]] .. '\n' .. CODE .. '\n' .. [[end)()}]]

if not load(CODE) then gg.alert('⚠️ PASTE.')
goto await end


PACK = CODE
CACHE = gg.EXT_CACHE_DIR
BIN = string.dump(load(CODE), true)
gg.internal2(load(BIN), CACHE .. '/unknown.lasm')
LASM = io.open(CACHE .. '/unknown.lasm', "r"):read('*a')
LASM = LASM:gsub('\t', '')


-- // Working with lasm.
LASM = LASM:gsub('%.line 0', "LOADK v0' File protected by @islavikfx '")
LASM = LASM:gsub('%.source [^\n]*',".source ''"):gsub('%.source [^\n]*',".source 'unknown'", 1)
LASM = LASM:gsub('%.linedefined %d+', '.linedefined 2096143216')
LASM = LASM:gsub('%.lastlinedefined %d+', '.lastlinedefined 2096143216')
LASM = LASM:gsub('%.numparams (%d+)', function(x) return '.numparams '..x+math.random(6, 12) end)
LASM = LASM:gsub('%.is_vararg (%d+)', function(x) return '.is_vararg '..x+math.random(7, 14) end)
LASM = LASM:gsub('%.maxstacksize %d+', '.maxstacksize 250')


-- // This kills 95% of SS Tools, Germany Decompiler and etc.
LASM = LASM:gsub('%.upval v0 [^\n]*', function() return '.upval v' .. math.random(0,2) .. ' nil\n.upval u' .. math.random(1,4) .. ' nil' end, 1)


-- // Good chars and string dump.
BIN = string.dump(load(LASM))
BIN = BIN:gsub(('').char(0x70, 0x9b, 0xf0, 0x7c),function() return ('').char(math.random(0,0xff), math.random(0,0xff), math.random(0,0xff), math.random(0x80,0xff)) end)


-- // Credits at end.
BIN = BIN .. '�  ��@ ab �\n�\t*** version: OpenSource [2026/07/07] *** �f\n D�! �\t*** github.com/islavikfx *** +��\n� ���'


io.open(data[2] .. '/[load] ' .. data[1]:match('[^/]+$'), 'w+'):write(PACK)
io.open(data[2] .. '/[enc] ' .. data[1]:match('[^/]+$'), 'w+'):write(BIN)
gg.toast(' ✅ ')


::await::
while (true) do
 if gg.isVisible() then
  gg.setVisible(false)
 goto HOME end
end
