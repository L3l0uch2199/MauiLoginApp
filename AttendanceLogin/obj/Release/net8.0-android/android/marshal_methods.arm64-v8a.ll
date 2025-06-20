; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [197 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [394 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 61
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 196
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 73
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 140
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 88
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 105
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 20
	i64 670564002081277297, ; 7: Microsoft.Identity.Client.dll => 0x94e526837380571 => 62
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 183
	i64 769231974326215379, ; 9: ja/Microsoft.Data.SqlClient.resources.dll => 0xaacdc67b39622d3 => 5
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 123
	i64 849051935479314978, ; 11: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 23
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 93
	i64 937459790420187032, ; 13: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 75
	i64 1060858978308751610, ; 14: Azure.Core.dll => 0xeb8ed9ebee080fa => 48
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 109
	i64 1121665720830085036, ; 16: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 31
	i64 1150430735170971895, ; 17: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 9
	i64 1268860745194512059, ; 18: System.Drawing.dll => 0x119be62002c19ebb => 133
	i64 1369545283391376210, ; 19: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 101
	i64 1404195534211153682, ; 20: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 138
	i64 1476839205573959279, ; 21: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 146
	i64 1486715745332614827, ; 22: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 70
	i64 1513467482682125403, ; 23: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 195
	i64 1537168428375924959, ; 24: System.Threading.Thread.dll => 0x15551e8a954ae0df => 183
	i64 1556147632182429976, ; 25: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 29
	i64 1624659445732251991, ; 26: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 85
	i64 1628611045998245443, ; 27: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 98
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 142
	i64 1767386781656293639, ; 29: System.Private.Uri.dll => 0x188704e9f5582107 => 156
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 84
	i64 1825687700144851180, ; 31: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 159
	i64 1835311033149317475, ; 32: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 19
	i64 1836611346387731153, ; 33: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 105
	i64 1855542058876079793, ; 34: AttendanceLogin.dll => 0x19c035abe51b0eb1 => 112
	i64 1865037103900624886, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 50
	i64 1875417405349196092, ; 36: System.Drawing.Primitives => 0x1a06d2319b6c713c => 132
	i64 1881198190668717030, ; 37: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 41
	i64 1920760634179481754, ; 38: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 71
	i64 1959996714666907089, ; 39: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 41
	i64 1972385128188460614, ; 40: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 170
	i64 1981742497975770890, ; 41: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 97
	i64 1983698669889758782, ; 42: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 15
	i64 2019660174692588140, ; 43: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 33
	i64 2040001226662520565, ; 44: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 182
	i64 2102659300918482391, ; 45: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 132
	i64 2165725771938924357, ; 46: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 86
	i64 2262844636196693701, ; 47: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 93
	i64 2287834202362508563, ; 48: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 116
	i64 2302323944321350744, ; 49: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 37
	i64 2316229908869312383, ; 50: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 68
	i64 2329709569556905518, ; 51: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 96
	i64 2335503487726329082, ; 52: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 178
	i64 2470498323731680442, ; 53: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 89
	i64 2497223385847772520, ; 54: System.Runtime => 0x22a7eb7046413568 => 167
	i64 2547086958574651984, ; 55: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 83
	i64 2602673633151553063, ; 56: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 40
	i64 2612152650457191105, ; 57: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 69
	i64 2632269733008246987, ; 58: System.Net.NameResolution => 0x2487b36034f808cb => 144
	i64 2632383359798256946, ; 59: tr\Microsoft.Data.SqlClient.resources => 0x24881ab8016ca532 => 10
	i64 2656907746661064104, ; 60: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 56
	i64 2662981627730767622, ; 61: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 15
	i64 2789714023057451704, ; 62: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 65
	i64 2815524396660695947, ; 63: System.Security.AccessControl => 0x2712c0857f68238b => 168
	i64 2851879596360956261, ; 64: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 77
	i64 2895129759130297543, ; 65: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 20
	i64 3004558106879253741, ; 66: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 5
	i64 3017704767998173186, ; 67: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 109
	i64 3063847325783385934, ; 68: System.ClientModel.dll => 0x2a84f8e8eb59674e => 76
	i64 3106852385031680087, ; 69: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 166
	i64 3289520064315143713, ; 70: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 95
	i64 3311221304742556517, ; 71: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 153
	i64 3325875462027654285, ; 72: System.Runtime.Numerics => 0x2e27e21c8958b48d => 162
	i64 3328853167529574890, ; 73: System.Net.Sockets.dll => 0x2e327651a008c1ea => 150
	i64 3344514922410554693, ; 74: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 111
	i64 3402534845034375023, ; 75: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 79
	i64 3429672777697402584, ; 76: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 73
	i64 3494946837667399002, ; 77: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 54
	i64 3522470458906976663, ; 78: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 106
	i64 3523004241079211829, ; 79: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 53
	i64 3551103847008531295, ; 80: System.Private.CoreLib.dll => 0x31480e226177735f => 193
	i64 3567343442040498961, ; 81: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 35
	i64 3571415421602489686, ; 82: System.Runtime.dll => 0x319037675df7e556 => 167
	i64 3638003163729360188, ; 83: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 55
	i64 3647754201059316852, ; 84: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 188
	i64 3655542548057982301, ; 85: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 54
	i64 3716579019761409177, ; 86: netstandard.dll => 0x3393f0ed5c8c5c99 => 192
	i64 3727469159507183293, ; 87: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 104
	i64 3869221888984012293, ; 88: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 58
	i64 3890352374528606784, ; 89: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 71
	i64 3919223565570527920, ; 90: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 171
	i64 3933965368022646939, ; 91: System.Net.Requests => 0x369840a8bfadc09b => 147
	i64 3966267475168208030, ; 92: System.Memory => 0x370b03412596249e => 142
	i64 4009997192427317104, ; 93: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 165
	i64 4073500526318903918, ; 94: System.Private.Xml.dll => 0x3887fb25779ae26e => 158
	i64 4090066110372993390, ; 95: fr/Microsoft.Data.SqlClient.resources.dll => 0x38c2d57510a5596e => 3
	i64 4120493066591692148, ; 96: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 46
	i64 4154383907710350974, ; 97: System.ComponentModel => 0x39a7562737acb67e => 123
	i64 4167269041631776580, ; 98: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 184
	i64 4168469861834746866, ; 99: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 169
	i64 4187479170553454871, ; 100: System.Linq.Expressions => 0x3a1cea1e912fa117 => 140
	i64 4205801962323029395, ; 101: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 122
	i64 4321865999928413850, ; 102: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 78
	i64 4343083164021660430, ; 103: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0x3c45bb20857d9b0e => 11
	i64 4356591372459378815, ; 104: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 43
	i64 4373617458794931033, ; 105: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 139
	i64 4672453897036726049, ; 106: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 138
	i64 4679594760078841447, ; 107: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 13
	i64 4716677666592453464, ; 108: System.Xml.XmlSerializer => 0x417501590542f358 => 190
	i64 4794310189461587505, ; 109: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 83
	i64 4795410492532947900, ; 110: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 106
	i64 4809057822547766521, ; 111: System.Drawing => 0x42bd349c3145ecf9 => 133
	i64 4814660307502931973, ; 112: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 144
	i64 4853321196694829351, ; 113: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 161
	i64 5103417709280584325, ; 114: System.Collections.Specialized => 0x46d2fb5e161b6285 => 119
	i64 5182934613077526976, ; 115: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 119
	i64 5278787618751394462, ; 116: System.Net.WebClient.dll => 0x4942055efc68329e => 151
	i64 5290786973231294105, ; 117: System.Runtime.Loader => 0x496ca6b869b72699 => 161
	i64 5423376490970181369, ; 118: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 159
	i64 5471532531798518949, ; 119: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 39
	i64 5522859530602327440, ; 120: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 42
	i64 5570799893513421663, ; 121: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 135
	i64 5573260873512690141, ; 122: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 174
	i64 5650097808083101034, ; 123: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 170
	i64 5692067934154308417, ; 124: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 108
	i64 5979151488806146654, ; 125: System.Formats.Asn1 => 0x52fa3699a489d25e => 134
	i64 5984759512290286505, ; 126: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 172
	i64 6068057819846744445, ; 127: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 36
	i64 6200764641006662125, ; 128: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 36
	i64 6222399776351216807, ; 129: System.Text.Json.dll => 0x565a67a0ffe264a7 => 179
	i64 6251069312384999852, ; 130: System.Transactions.Local => 0x56c0426b870da1ac => 186
	i64 6278736998281604212, ; 131: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 155
	i64 6357457916754632952, ; 132: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 47
	i64 6401687960814735282, ; 133: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 96
	i64 6478287442656530074, ; 134: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 24
	i64 6504860066809920875, ; 135: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 86
	i64 6548213210057960872, ; 136: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 92
	i64 6560151584539558821, ; 137: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 60
	i64 6617685658146568858, ; 138: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 176
	i64 6667137106064718713, ; 139: ru/Microsoft.Data.SqlClient.resources.dll => 0x5c866ddfbbd03b79 => 9
	i64 6743165466166707109, ; 140: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 32
	i64 6777482997383978746, ; 141: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 35
	i64 6786606130239981554, ; 142: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 130
	i64 6814185388980153342, ; 143: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 189
	i64 6876862101832370452, ; 144: System.Xml.Linq => 0x5f6f85a57d108914 => 187
	i64 6894844156784520562, ; 145: System.Numerics.Vectors => 0x5faf683aead1ad72 => 153
	i64 7055072420069764613, ; 146: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0x61e8a6fc96e9ee05 => 8
	i64 7083547580668757502, ; 147: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 157
	i64 7105430439328552570, ; 148: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 81
	i64 7220009545223068405, ; 149: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 39
	i64 7270811800166795866, ; 150: System.Linq => 0x64e71ccf51a90a5a => 141
	i64 7316205155833392065, ; 151: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 114
	i64 7348123982286201829, ; 152: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 80
	i64 7377312882064240630, ; 153: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 122
	i64 7488575175965059935, ; 154: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 187
	i64 7489048572193775167, ; 155: System.ObjectModel => 0x67ee71ff6b419e3f => 154
	i64 7496222613193209122, ; 156: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 79
	i64 7592577537120840276, ; 157: System.Diagnostics.Process => 0x695e410af5b2aa54 => 127
	i64 7654504624184590948, ; 158: System.Net.Http => 0x6a3a4366801b8264 => 143
	i64 7708790323521193081, ; 159: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 30
	i64 7714652370974252055, ; 160: System.Private.CoreLib => 0x6b0ff375198b9c17 => 193
	i64 7735176074855944702, ; 161: Microsoft.CSharp => 0x6b58dda848e391fe => 113
	i64 7735352534559001595, ; 162: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 110
	i64 7791074099216502080, ; 163: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 137
	i64 7836164640616011524, ; 164: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 85
	i64 7972383140441761405, ; 165: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 52
	i64 8064050204834738623, ; 166: System.Collections.dll => 0x6fe942efa61731bf => 120
	i64 8083354569033831015, ; 167: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 95
	i64 8087206902342787202, ; 168: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 126
	i64 8167236081217502503, ; 169: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 194
	i64 8185542183669246576, ; 170: System.Collections => 0x7198e33f4794aa70 => 120
	i64 8234598844743906698, ; 171: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 63
	i64 8246048515196606205, ; 172: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 74
	i64 8264926008854159966, ; 173: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 127
	i64 8368701292315763008, ; 174: System.Security.Cryptography => 0x7423997c6fd56140 => 174
	i64 8400357532724379117, ; 175: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 103
	i64 8513291706828295435, ; 176: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 75
	i64 8518412311883997971, ; 177: System.Collections.Immutable => 0x76377add7c28e313 => 117
	i64 8563666267364444763, ; 178: System.Private.Uri => 0x76d841191140ca5b => 156
	i64 8614108721271900878, ; 179: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 34
	i64 8626175481042262068, ; 180: Java.Interop => 0x77b654e585b55834 => 194
	i64 8638972117149407195, ; 181: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 113
	i64 8639588376636138208, ; 182: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 102
	i64 8677882282824630478, ; 183: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 34
	i64 8725526185868997716, ; 184: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 126
	i64 8882398187484578781, ; 185: de/Microsoft.Data.SqlClient.resources.dll => 0x7b449e172e9783dd => 1
	i64 8941376889969657626, ; 186: System.Xml.XDocument => 0x7c1626e87187471a => 189
	i64 8954753533646919997, ; 187: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 164
	i64 8955323522379913726, ; 188: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 62
	i64 9045785047181495996, ; 189: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 44
	i64 9052662452269567435, ; 190: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 67
	i64 9111603110219107042, ; 191: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 53
	i64 9243929322651484407, ; 192: AttendanceLogin => 0x804908be157580f7 => 112
	i64 9312692141327339315, ; 193: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 108
	i64 9324707631942237306, ; 194: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 84
	i64 9389258210823261255, ; 195: it/Microsoft.Data.SqlClient.resources.dll => 0x824d5898a88a4c47 => 4
	i64 9427266486299436557, ; 196: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 66
	i64 9513793942805897923, ; 197: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 11
	i64 9659729154652888475, ; 198: System.Text.RegularExpressions => 0x860e407c9991dd9b => 180
	i64 9667360217193089419, ; 199: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 128
	i64 9678050649315576968, ; 200: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 89
	i64 9702891218465930390, ; 201: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 118
	i64 9808709177481450983, ; 202: Mono.Android.dll => 0x881f890734e555e7 => 196
	i64 9819168441846169364, ; 203: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 67
	i64 9956195530459977388, ; 204: Microsoft.Maui => 0x8a2b8315b36616ac => 72
	i64 9991543690424095600, ; 205: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 19
	i64 10038780035334861115, ; 206: System.Net.Http.dll => 0x8b50e941206af13b => 143
	i64 10051358222726253779, ; 207: System.Private.Xml => 0x8b7d990c97ccccd3 => 158
	i64 10089571585547156312, ; 208: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 137
	i64 10092835686693276772, ; 209: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 70
	i64 10143853363526200146, ; 210: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 16
	i64 10229024438826829339, ; 211: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 92
	i64 10236703004850800690, ; 212: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 149
	i64 10406448008575299332, ; 213: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 111
	i64 10430153318873392755, ; 214: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 90
	i64 10447083246144586668, ; 215: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 50
	i64 10506226065143327199, ; 216: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 14
	i64 10546663366131771576, ; 217: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 164
	i64 10670374202010151210, ; 218: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 114
	i64 10785150219063592792, ; 219: System.Net.Primitives => 0x95ac8cfb68830758 => 146
	i64 10889380495983713167, ; 220: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 51
	i64 10964653383833615866, ; 221: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 131
	i64 11002576679268595294, ; 222: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 59
	i64 11009005086950030778, ; 223: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 72
	i64 11038974641380222378, ; 224: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0x993250f3080365aa => 12
	i64 11103970607964515343, ; 225: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 25
	i64 11162124722117608902, ; 226: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11183417087873056340, ; 227: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 6
	i64 11220793807500858938, ; 228: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 28
	i64 11226290749488709958, ; 229: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 60
	i64 11340910727871153756, ; 230: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 91
	i64 11341245327015630248, ; 231: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 77
	i64 11347436699239206956, ; 232: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 190
	i64 11369118378396596751, ; 233: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 1
	i64 11448276831755070604, ; 234: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 129
	i64 11485890710487134646, ; 235: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 160
	i64 11517440453979132662, ; 236: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 64
	i64 11518296021396496455, ; 237: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 26
	i64 11529969570048099689, ; 238: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11530571088791430846, ; 239: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 58
	i64 11597940890313164233, ; 240: netstandard => 0xa0f429ca8d1805c9 => 192
	i64 11705530742807338875, ; 241: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 22
	i64 12011556116648931059, ; 242: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 82
	i64 12040886584167504988, ; 243: System.Net.ServicePoint => 0xa719d28d8e121c5c => 149
	i64 12094367927612810875, ; 244: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 4
	i64 12102847907131387746, ; 245: System.Buffers => 0xa7f5f40c43256f62 => 115
	i64 12145679461940342714, ; 246: System.Text.Json => 0xa88e1f1ebcb62fba => 179
	i64 12198439281774268251, ; 247: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 68
	i64 12201331334810686224, ; 248: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 165
	i64 12269460666702402136, ; 249: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 117
	i64 12439275739440478309, ; 250: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 65
	i64 12451044538927396471, ; 251: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 94
	i64 12466513435562512481, ; 252: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 99
	i64 12475113361194491050, ; 253: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 47
	i64 12493213219680520345, ; 254: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 51
	i64 12517810545449516888, ; 255: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 130
	i64 12538491095302438457, ; 256: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 87
	i64 12550732019250633519, ; 257: System.IO.Compression => 0xae2d28465e8e1b2f => 136
	i64 12681088699309157496, ; 258: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 27
	i64 12699999919562409296, ; 259: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 128
	i64 12700543734426720211, ; 260: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 88
	i64 12708922737231849740, ; 261: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 177
	i64 12717050818822477433, ; 262: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 166
	i64 12823819093633476069, ; 263: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 40
	i64 12835242264250840079, ; 264: System.IO.Pipes => 0xb21ff0d5d6c0740f => 139
	i64 12843321153144804894, ; 265: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 61
	i64 12859557719246324186, ; 266: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 152
	i64 13068258254871114833, ; 267: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 163
	i64 13221551921002590604, ; 268: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 14
	i64 13222659110913276082, ; 269: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 28
	i64 13343850469010654401, ; 270: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 195
	i64 13381594904270902445, ; 271: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 22
	i64 13431476299110033919, ; 272: System.Net.WebClient => 0xba663087f18829ff => 151
	i64 13463706743370286408, ; 273: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 155
	i64 13465488254036897740, ; 274: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 110
	i64 13467053111158216594, ; 275: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 42
	i64 13540124433173649601, ; 276: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 43
	i64 13545416393490209236, ; 277: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 26
	i64 13572454107664307259, ; 278: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 104
	i64 13710614125866346983, ; 279: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 168
	i64 13711608316504069620, ; 280: cs\Microsoft.Data.SqlClient.resources => 0xbe496b1ddc8455f4 => 0
	i64 13717397318615465333, ; 281: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 121
	i64 13742054908850494594, ; 282: Azure.Identity => 0xbeb596218df25c82 => 49
	i64 13755568601956062840, ; 283: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 21
	i64 13773684197872074685, ; 284: pl\Microsoft.Data.SqlClient.resources => 0xbf25f4cd46937fbd => 7
	i64 13814445057219246765, ; 285: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 24
	i64 13881769479078963060, ; 286: System.Console.dll => 0xc0a5f3cade5c6774 => 124
	i64 13959074834287824816, ; 287: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 94
	i64 14100563506285742564, ; 288: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 16
	i64 14124974489674258913, ; 289: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 87
	i64 14125464355221830302, ; 290: System.Threading.dll => 0xc407bafdbc707a9e => 185
	i64 14254574811015963973, ; 291: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 177
	i64 14327709162229390963, ; 292: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 173
	i64 14461014870687870182, ; 293: System.Net.Requests.dll => 0xc8afd8683afdece6 => 147
	i64 14464374589798375073, ; 294: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 37
	i64 14522721392235705434, ; 295: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 18
	i64 14533141687369379279, ; 296: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 12
	i64 14551742072151931844, ; 297: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 178
	i64 14561513370130550166, ; 298: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 172
	i64 14622043554576106986, ; 299: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 163
	i64 14648804764802849406, ; 300: Azure.Identity.dll => 0xcb4b0252261f9a7e => 49
	i64 14669215534098758659, ; 301: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 56
	i64 14705122255218365489, ; 302: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 29
	i64 14744092281598614090, ; 303: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 45
	i64 14832630590065248058, ; 304: System.Security.Claims => 0xcdd816ef5d6e873a => 169
	i64 14852515768018889994, ; 305: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 91
	i64 14892012299694389861, ; 306: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 46
	i64 14904040806490515477, ; 307: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 13
	i64 14912225920358050525, ; 308: System.Security.Principal.Windows => 0xcef2de7759506add => 175
	i64 14921072373058723558, ; 309: ko/Microsoft.Data.SqlClient.resources.dll => 0xcf124c44a00f5ee6 => 6
	i64 14935719434541007538, ; 310: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 176
	i64 14954917835170835695, ; 311: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 57
	i64 14984936317414011727, ; 312: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 152
	i64 14987728460634540364, ; 313: System.IO.Compression.dll => 0xcfff1ba06622494c => 136
	i64 15015154896917945444, ; 314: System.Net.Security.dll => 0xd0608bd33642dc64 => 148
	i64 15076659072870671916, ; 315: System.ObjectModel.dll => 0xd13b0d8c1620662c => 154
	i64 15111608613780139878, ; 316: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 30
	i64 15115185479366240210, ; 317: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 135
	i64 15115246995682617720, ; 318: pl/Microsoft.Data.SqlClient.resources.dll => 0xd1c4250efdf3e978 => 7
	i64 15133485256822086103, ; 319: System.Linq.dll => 0xd204f0a9127dd9d7 => 141
	i64 15138356091203993725, ; 320: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 64
	i64 15227001540531775957, ; 321: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 55
	i64 15370334346939861994, ; 322: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 90
	i64 15383240894167415497, ; 323: System.Memory.Data => 0xd57c4016df1c7ac9 => 80
	i64 15391712275433856905, ; 324: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 57
	i64 15440042012048828209, ; 325: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 8
	i64 15475196252089753159, ; 326: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 78
	i64 15527772828719725935, ; 327: System.Console => 0xd77dbb1e38cd3d6f => 124
	i64 15536481058354060254, ; 328: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 17
	i64 15541854775306130054, ; 329: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 173
	i64 15557562860424774966, ; 330: System.Net.Sockets => 0xd7e790fe7a6dc536 => 150
	i64 15582737692548360875, ; 331: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 98
	i64 15609085926864131306, ; 332: System.dll => 0xd89e9cf3334914ea => 191
	i64 15661133872274321916, ; 333: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 188
	i64 15664356999916475676, ; 334: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 17
	i64 15718684508147848364, ; 335: es/Microsoft.Data.SqlClient.resources.dll => 0xda23fc476c9694ac => 2
	i64 15743187114543869802, ; 336: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 25
	i64 15783653065526199428, ; 337: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 18
	i64 15809675044885562667, ; 338: cs/Microsoft.Data.SqlClient.resources.dll => 0xdb673fb0a8c3052b => 0
	i64 15847085070278954535, ; 339: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 181
	i64 15963349826457351533, ; 340: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 182
	i64 16018552496348375205, ; 341: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 145
	i64 16154507427712707110, ; 342: System => 0xe03056ea4e39aa26 => 191
	i64 16219561732052121626, ; 343: System.Net.Security => 0xe1177575db7c781a => 148
	i64 16288847719894691167, ; 344: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 31
	i64 16321164108206115771, ; 345: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 59
	i64 16337011941688632206, ; 346: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 175
	i64 16454459195343277943, ; 347: System.Net.NetworkInformation => 0xe459fb756d988f77 => 145
	i64 16540916324946374984, ; 348: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 3
	i64 16649148416072044166, ; 349: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 74
	i64 16677317093839702854, ; 350: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 103
	i64 16765015072123548030, ; 351: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 129
	i64 16856067890322379635, ; 352: System.Data.Common.dll => 0xe9ecc87060889373 => 125
	i64 16890310621557459193, ; 353: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 180
	i64 16942731696432749159, ; 354: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 38
	i64 16945858842201062480, ; 355: Azure.Core => 0xeb2bc8d57f4e7c50 => 48
	i64 16998075588627545693, ; 356: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 101
	i64 17006954551347072385, ; 357: System.ClientModel => 0xec04d70ec8414d81 => 76
	i64 17008137082415910100, ; 358: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 118
	i64 17031351772568316411, ; 359: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 100
	i64 17062143951396181894, ; 360: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 121
	i64 17089008752050867324, ; 361: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 45
	i64 17118171214553292978, ; 362: System.Threading.Channels => 0xed8ff6060fc420b2 => 181
	i64 17137864900836977098, ; 363: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 69
	i64 17197986060146327831, ; 364: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 63
	i64 17202182880784296190, ; 365: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 171
	i64 17230721278011714856, ; 366: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 157
	i64 17234219099804750107, ; 367: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 186
	i64 17260702271250283638, ; 368: System.Data.Common => 0xef8a5543bba6bc76 => 125
	i64 17333249706306540043, ; 369: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 131
	i64 17342750010158924305, ; 370: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 23
	i64 17438153253682247751, ; 371: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 38
	i64 17514990004910432069, ; 372: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 21
	i64 17523946658117960076, ; 373: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 82
	i64 17558788868712318792, ; 374: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 2
	i64 17623389608345532001, ; 375: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 33
	i64 17702523067201099846, ; 376: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 44
	i64 17704177640604968747, ; 377: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 99
	i64 17710060891934109755, ; 378: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 97
	i64 17712670374920797664, ; 379: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 160
	i64 17777860260071588075, ; 380: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 162
	i64 17790600151040787804, ; 381: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 66
	i64 17838668724098252521, ; 382: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 115
	i64 18017743553296241350, ; 383: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 52
	i64 18025913125965088385, ; 384: System.Threading => 0xfa28e87b91334681 => 185
	i64 18099568558057551825, ; 385: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 32
	i64 18102946074201342511, ; 386: tr/Microsoft.Data.SqlClient.resources.dll => 0xfb3a958a7cd2c22f => 10
	i64 18121036031235206392, ; 387: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 100
	i64 18146411883821974900, ; 388: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 134
	i64 18203743254473369877, ; 389: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 81
	i64 18225059387460068507, ; 390: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 184
	i64 18245806341561545090, ; 391: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 116
	i64 18305135509493619199, ; 392: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 102
	i64 18324163916253801303 ; 393: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 27
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [394 x i32] [
	i32 61, ; 0
	i32 196, ; 1
	i32 73, ; 2
	i32 140, ; 3
	i32 88, ; 4
	i32 105, ; 5
	i32 20, ; 6
	i32 62, ; 7
	i32 183, ; 8
	i32 5, ; 9
	i32 123, ; 10
	i32 23, ; 11
	i32 93, ; 12
	i32 75, ; 13
	i32 48, ; 14
	i32 109, ; 15
	i32 31, ; 16
	i32 9, ; 17
	i32 133, ; 18
	i32 101, ; 19
	i32 138, ; 20
	i32 146, ; 21
	i32 70, ; 22
	i32 195, ; 23
	i32 183, ; 24
	i32 29, ; 25
	i32 85, ; 26
	i32 98, ; 27
	i32 142, ; 28
	i32 156, ; 29
	i32 84, ; 30
	i32 159, ; 31
	i32 19, ; 32
	i32 105, ; 33
	i32 112, ; 34
	i32 50, ; 35
	i32 132, ; 36
	i32 41, ; 37
	i32 71, ; 38
	i32 41, ; 39
	i32 170, ; 40
	i32 97, ; 41
	i32 15, ; 42
	i32 33, ; 43
	i32 182, ; 44
	i32 132, ; 45
	i32 86, ; 46
	i32 93, ; 47
	i32 116, ; 48
	i32 37, ; 49
	i32 68, ; 50
	i32 96, ; 51
	i32 178, ; 52
	i32 89, ; 53
	i32 167, ; 54
	i32 83, ; 55
	i32 40, ; 56
	i32 69, ; 57
	i32 144, ; 58
	i32 10, ; 59
	i32 56, ; 60
	i32 15, ; 61
	i32 65, ; 62
	i32 168, ; 63
	i32 77, ; 64
	i32 20, ; 65
	i32 5, ; 66
	i32 109, ; 67
	i32 76, ; 68
	i32 166, ; 69
	i32 95, ; 70
	i32 153, ; 71
	i32 162, ; 72
	i32 150, ; 73
	i32 111, ; 74
	i32 79, ; 75
	i32 73, ; 76
	i32 54, ; 77
	i32 106, ; 78
	i32 53, ; 79
	i32 193, ; 80
	i32 35, ; 81
	i32 167, ; 82
	i32 55, ; 83
	i32 188, ; 84
	i32 54, ; 85
	i32 192, ; 86
	i32 104, ; 87
	i32 58, ; 88
	i32 71, ; 89
	i32 171, ; 90
	i32 147, ; 91
	i32 142, ; 92
	i32 165, ; 93
	i32 158, ; 94
	i32 3, ; 95
	i32 46, ; 96
	i32 123, ; 97
	i32 184, ; 98
	i32 169, ; 99
	i32 140, ; 100
	i32 122, ; 101
	i32 78, ; 102
	i32 11, ; 103
	i32 43, ; 104
	i32 139, ; 105
	i32 138, ; 106
	i32 13, ; 107
	i32 190, ; 108
	i32 83, ; 109
	i32 106, ; 110
	i32 133, ; 111
	i32 144, ; 112
	i32 161, ; 113
	i32 119, ; 114
	i32 119, ; 115
	i32 151, ; 116
	i32 161, ; 117
	i32 159, ; 118
	i32 39, ; 119
	i32 42, ; 120
	i32 135, ; 121
	i32 174, ; 122
	i32 170, ; 123
	i32 108, ; 124
	i32 134, ; 125
	i32 172, ; 126
	i32 36, ; 127
	i32 36, ; 128
	i32 179, ; 129
	i32 186, ; 130
	i32 155, ; 131
	i32 47, ; 132
	i32 96, ; 133
	i32 24, ; 134
	i32 86, ; 135
	i32 92, ; 136
	i32 60, ; 137
	i32 176, ; 138
	i32 9, ; 139
	i32 32, ; 140
	i32 35, ; 141
	i32 130, ; 142
	i32 189, ; 143
	i32 187, ; 144
	i32 153, ; 145
	i32 8, ; 146
	i32 157, ; 147
	i32 81, ; 148
	i32 39, ; 149
	i32 141, ; 150
	i32 114, ; 151
	i32 80, ; 152
	i32 122, ; 153
	i32 187, ; 154
	i32 154, ; 155
	i32 79, ; 156
	i32 127, ; 157
	i32 143, ; 158
	i32 30, ; 159
	i32 193, ; 160
	i32 113, ; 161
	i32 110, ; 162
	i32 137, ; 163
	i32 85, ; 164
	i32 52, ; 165
	i32 120, ; 166
	i32 95, ; 167
	i32 126, ; 168
	i32 194, ; 169
	i32 120, ; 170
	i32 63, ; 171
	i32 74, ; 172
	i32 127, ; 173
	i32 174, ; 174
	i32 103, ; 175
	i32 75, ; 176
	i32 117, ; 177
	i32 156, ; 178
	i32 34, ; 179
	i32 194, ; 180
	i32 113, ; 181
	i32 102, ; 182
	i32 34, ; 183
	i32 126, ; 184
	i32 1, ; 185
	i32 189, ; 186
	i32 164, ; 187
	i32 62, ; 188
	i32 44, ; 189
	i32 67, ; 190
	i32 53, ; 191
	i32 112, ; 192
	i32 108, ; 193
	i32 84, ; 194
	i32 4, ; 195
	i32 66, ; 196
	i32 11, ; 197
	i32 180, ; 198
	i32 128, ; 199
	i32 89, ; 200
	i32 118, ; 201
	i32 196, ; 202
	i32 67, ; 203
	i32 72, ; 204
	i32 19, ; 205
	i32 143, ; 206
	i32 158, ; 207
	i32 137, ; 208
	i32 70, ; 209
	i32 16, ; 210
	i32 92, ; 211
	i32 149, ; 212
	i32 111, ; 213
	i32 90, ; 214
	i32 50, ; 215
	i32 14, ; 216
	i32 164, ; 217
	i32 114, ; 218
	i32 146, ; 219
	i32 51, ; 220
	i32 131, ; 221
	i32 59, ; 222
	i32 72, ; 223
	i32 12, ; 224
	i32 25, ; 225
	i32 107, ; 226
	i32 6, ; 227
	i32 28, ; 228
	i32 60, ; 229
	i32 91, ; 230
	i32 77, ; 231
	i32 190, ; 232
	i32 1, ; 233
	i32 129, ; 234
	i32 160, ; 235
	i32 64, ; 236
	i32 26, ; 237
	i32 107, ; 238
	i32 58, ; 239
	i32 192, ; 240
	i32 22, ; 241
	i32 82, ; 242
	i32 149, ; 243
	i32 4, ; 244
	i32 115, ; 245
	i32 179, ; 246
	i32 68, ; 247
	i32 165, ; 248
	i32 117, ; 249
	i32 65, ; 250
	i32 94, ; 251
	i32 99, ; 252
	i32 47, ; 253
	i32 51, ; 254
	i32 130, ; 255
	i32 87, ; 256
	i32 136, ; 257
	i32 27, ; 258
	i32 128, ; 259
	i32 88, ; 260
	i32 177, ; 261
	i32 166, ; 262
	i32 40, ; 263
	i32 139, ; 264
	i32 61, ; 265
	i32 152, ; 266
	i32 163, ; 267
	i32 14, ; 268
	i32 28, ; 269
	i32 195, ; 270
	i32 22, ; 271
	i32 151, ; 272
	i32 155, ; 273
	i32 110, ; 274
	i32 42, ; 275
	i32 43, ; 276
	i32 26, ; 277
	i32 104, ; 278
	i32 168, ; 279
	i32 0, ; 280
	i32 121, ; 281
	i32 49, ; 282
	i32 21, ; 283
	i32 7, ; 284
	i32 24, ; 285
	i32 124, ; 286
	i32 94, ; 287
	i32 16, ; 288
	i32 87, ; 289
	i32 185, ; 290
	i32 177, ; 291
	i32 173, ; 292
	i32 147, ; 293
	i32 37, ; 294
	i32 18, ; 295
	i32 12, ; 296
	i32 178, ; 297
	i32 172, ; 298
	i32 163, ; 299
	i32 49, ; 300
	i32 56, ; 301
	i32 29, ; 302
	i32 45, ; 303
	i32 169, ; 304
	i32 91, ; 305
	i32 46, ; 306
	i32 13, ; 307
	i32 175, ; 308
	i32 6, ; 309
	i32 176, ; 310
	i32 57, ; 311
	i32 152, ; 312
	i32 136, ; 313
	i32 148, ; 314
	i32 154, ; 315
	i32 30, ; 316
	i32 135, ; 317
	i32 7, ; 318
	i32 141, ; 319
	i32 64, ; 320
	i32 55, ; 321
	i32 90, ; 322
	i32 80, ; 323
	i32 57, ; 324
	i32 8, ; 325
	i32 78, ; 326
	i32 124, ; 327
	i32 17, ; 328
	i32 173, ; 329
	i32 150, ; 330
	i32 98, ; 331
	i32 191, ; 332
	i32 188, ; 333
	i32 17, ; 334
	i32 2, ; 335
	i32 25, ; 336
	i32 18, ; 337
	i32 0, ; 338
	i32 181, ; 339
	i32 182, ; 340
	i32 145, ; 341
	i32 191, ; 342
	i32 148, ; 343
	i32 31, ; 344
	i32 59, ; 345
	i32 175, ; 346
	i32 145, ; 347
	i32 3, ; 348
	i32 74, ; 349
	i32 103, ; 350
	i32 129, ; 351
	i32 125, ; 352
	i32 180, ; 353
	i32 38, ; 354
	i32 48, ; 355
	i32 101, ; 356
	i32 76, ; 357
	i32 118, ; 358
	i32 100, ; 359
	i32 121, ; 360
	i32 45, ; 361
	i32 181, ; 362
	i32 69, ; 363
	i32 63, ; 364
	i32 171, ; 365
	i32 157, ; 366
	i32 186, ; 367
	i32 125, ; 368
	i32 131, ; 369
	i32 23, ; 370
	i32 38, ; 371
	i32 21, ; 372
	i32 82, ; 373
	i32 2, ; 374
	i32 33, ; 375
	i32 44, ; 376
	i32 99, ; 377
	i32 97, ; 378
	i32 160, ; 379
	i32 162, ; 380
	i32 66, ; 381
	i32 115, ; 382
	i32 52, ; 383
	i32 185, ; 384
	i32 32, ; 385
	i32 10, ; 386
	i32 100, ; 387
	i32 134, ; 388
	i32 81, ; 389
	i32 184, ; 390
	i32 116, ; 391
	i32 102, ; 392
	i32 27 ; 393
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
