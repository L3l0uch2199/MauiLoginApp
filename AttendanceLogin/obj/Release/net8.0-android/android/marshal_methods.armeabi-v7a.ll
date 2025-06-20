; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [197 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [394 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 145
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 144
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 183
	i32 57725457, ; 3: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 4
	i32 57727992, ; 4: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 5
	i32 66541672, ; 5: System.Diagnostics.StackTrace => 0x3f75868 => 128
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 46
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 172
	i32 72070932, ; 8: Microsoft.Maui.Graphics.dll => 0x44bb714 => 74
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 160
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 181
	i32 139659294, ; 11: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 5
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 152
	i32 149972175, ; 13: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 172
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 166535111, ; 15: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 9
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 106
	i32 195452805, ; 17: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 43
	i32 199333315, ; 18: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 44
	i32 205061960, ; 19: System.ComponentModel => 0xc38ff48 => 123
	i32 209399409, ; 20: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 86
	i32 230752869, ; 21: Microsoft.CSharp.dll => 0xdc10265 => 113
	i32 264223668, ; 22: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 11
	i32 280992041, ; 23: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 15
	i32 317674968, ; 24: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 43
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 83
	i32 330147069, ; 26: Microsoft.SqlServer.Server => 0x13ada4fd => 75
	i32 332551172, ; 27: AttendanceLogin.dll => 0x13d25404 => 112
	i32 336156722, ; 28: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 28
	i32 342366114, ; 29: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 95
	i32 356389973, ; 30: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 27
	i32 360671332, ; 31: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 7
	i32 367780167, ; 32: System.IO.Pipes => 0x15ebe147 => 139
	i32 374914964, ; 33: System.Transactions.Local => 0x1658bf94 => 186
	i32 375677976, ; 34: System.Net.ServicePoint.dll => 0x16646418 => 149
	i32 379916513, ; 35: System.Threading.Thread.dll => 0x16a510e1 => 183
	i32 385762202, ; 36: System.Memory.dll => 0x16fe439a => 142
	i32 392610295, ; 37: System.Threading.ThreadPool.dll => 0x1766c1f7 => 184
	i32 395744057, ; 38: _Microsoft.Android.Resource.Designer => 0x17969339 => 47
	i32 407321033, ; 39: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 10
	i32 435591531, ; 40: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 39
	i32 442565967, ; 41: System.Collections => 0x1a61054f => 120
	i32 450948140, ; 42: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 94
	i32 451504562, ; 43: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 173
	i32 459347974, ; 44: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 165
	i32 469710990, ; 45: System.dll => 0x1bff388e => 191
	i32 485463106, ; 46: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 64
	i32 498788369, ; 47: System.ObjectModel => 0x1dbae811 => 154
	i32 500358224, ; 48: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 26
	i32 503918385, ; 49: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 20
	i32 513247710, ; 50: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 61
	i32 539058512, ; 51: Microsoft.Extensions.Logging => 0x20216150 => 58
	i32 546455878, ; 52: System.Runtime.Serialization.Xml => 0x20924146 => 166
	i32 548916678, ; 53: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 50
	i32 592146354, ; 54: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 34
	i32 613668793, ; 55: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 170
	i32 627609679, ; 56: Xamarin.AndroidX.CustomView => 0x2568904f => 92
	i32 627931235, ; 57: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 32
	i32 662205335, ; 58: System.Text.Encodings.Web.dll => 0x27787397 => 178
	i32 672442732, ; 59: System.Collections.Concurrent => 0x2814a96c => 116
	i32 683518922, ; 60: System.Net.Security => 0x28bdabca => 148
	i32 688181140, ; 61: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 14
	i32 690569205, ; 62: System.Xml.Linq.dll => 0x29293ff5 => 187
	i32 706645707, ; 63: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 29
	i32 709152836, ; 64: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 81
	i32 709557578, ; 65: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 17
	i32 722857257, ; 66: System.Runtime.Loader.dll => 0x2b15ed29 => 161
	i32 723796036, ; 67: System.ClientModel.dll => 0x2b244044 => 76
	i32 759454413, ; 68: System.Net.Requests => 0x2d445acd => 147
	i32 762598435, ; 69: System.IO.Pipes.dll => 0x2d745423 => 139
	i32 775507847, ; 70: System.IO.Compression => 0x2e394f87 => 136
	i32 777317022, ; 71: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 38
	i32 789151979, ; 72: Microsoft.Extensions.Options => 0x2f0980eb => 60
	i32 804715423, ; 73: System.Data.Common => 0x2ff6fb9f => 125
	i32 809140021, ; 74: AttendanceLogin => 0x303a7f35 => 112
	i32 823281589, ; 75: System.Private.Uri.dll => 0x311247b5 => 156
	i32 830298997, ; 76: System.IO.Compression.Brotli => 0x317d5b75 => 135
	i32 904024072, ; 77: System.ComponentModel.Primitives.dll => 0x35e25008 => 121
	i32 926902833, ; 78: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 41
	i32 967690846, ; 79: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 95
	i32 975236339, ; 80: System.Diagnostics.Tracing => 0x3a20ecf3 => 131
	i32 975874589, ; 81: System.Xml.XDocument => 0x3a2aaa1d => 189
	i32 986514023, ; 82: System.Private.DataContractSerialization.dll => 0x3acd0267 => 155
	i32 992768348, ; 83: System.Collections.dll => 0x3b2c715c => 120
	i32 1012816738, ; 84: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 105
	i32 1019214401, ; 85: System.Drawing => 0x3cbffa41 => 133
	i32 1028951442, ; 86: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 57
	i32 1029334545, ; 87: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 16
	i32 1035644815, ; 88: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 84
	i32 1036536393, ; 89: System.Drawing.Primitives.dll => 0x3dc84a49 => 132
	i32 1044663988, ; 90: System.Linq.Expressions.dll => 0x3e444eb4 => 140
	i32 1048439329, ; 91: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 1
	i32 1052210849, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 97
	i32 1062017875, ; 93: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 63
	i32 1082857460, ; 94: System.ComponentModel.TypeConverter => 0x408b17f4 => 122
	i32 1084122840, ; 95: Xamarin.Kotlin.StdLib => 0x409e66d8 => 110
	i32 1089913930, ; 96: System.Diagnostics.EventLog.dll => 0x40f6c44a => 78
	i32 1098259244, ; 97: System => 0x41761b2c => 191
	i32 1118262833, ; 98: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 29
	i32 1138436374, ; 99: Microsoft.Data.SqlClient.dll => 0x43db2916 => 51
	i32 1168523401, ; 100: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 35
	i32 1178241025, ; 101: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 102
	i32 1203215381, ; 102: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 33
	i32 1204575371, ; 103: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 53
	i32 1208641965, ; 104: System.Diagnostics.Process => 0x480a69ad => 127
	i32 1234928153, ; 105: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 31
	i32 1260983243, ; 106: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 15
	i32 1293217323, ; 107: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 93
	i32 1309188875, ; 108: System.Private.DataContractSerialization => 0x4e08a30b => 155
	i32 1315359775, ; 109: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 0
	i32 1324164729, ; 110: System.Linq => 0x4eed2679 => 141
	i32 1335329327, ; 111: System.Runtime.Serialization.Json.dll => 0x4f97822f => 164
	i32 1373134921, ; 112: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 45
	i32 1376866003, ; 113: Xamarin.AndroidX.SavedState => 0x52114ed3 => 105
	i32 1406073936, ; 114: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 89
	i32 1408764838, ; 115: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 163
	i32 1430672901, ; 116: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 13
	i32 1452070440, ; 117: System.Formats.Asn1.dll => 0x568cd628 => 134
	i32 1458022317, ; 118: System.Net.Security.dll => 0x56e7a7ad => 148
	i32 1460893475, ; 119: System.IdentityModel.Tokens.Jwt => 0x57137723 => 79
	i32 1461004990, ; 120: es\Microsoft.Maui.Controls.resources => 0x57152abe => 19
	i32 1461234159, ; 121: System.Collections.Immutable.dll => 0x5718a9ef => 117
	i32 1462112819, ; 122: System.IO.Compression.dll => 0x57261233 => 136
	i32 1469204771, ; 123: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 85
	i32 1470490898, ; 124: Microsoft.Extensions.Primitives => 0x57a5e912 => 61
	i32 1479771757, ; 125: System.Collections.Immutable => 0x5833866d => 117
	i32 1480492111, ; 126: System.IO.Compression.Brotli.dll => 0x583e844f => 135
	i32 1487239319, ; 127: Microsoft.Win32.Primitives => 0x58a57897 => 114
	i32 1493001747, ; 128: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 23
	i32 1498168481, ; 129: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 65
	i32 1514721132, ; 130: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 18
	i32 1536373174, ; 131: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 129
	i32 1543031311, ; 132: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 180
	i32 1551623176, ; 133: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 38
	i32 1573704789, ; 134: System.Runtime.Serialization.Json => 0x5dccd455 => 164
	i32 1582305585, ; 135: Azure.Identity => 0x5e501131 => 49
	i32 1596263029, ; 136: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 12
	i32 1604827217, ; 137: System.Net.WebClient => 0x5fa7b851 => 151
	i32 1622152042, ; 138: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 99
	i32 1624863272, ; 139: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1628113371, ; 140: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 68
	i32 1636350590, ; 141: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 91
	i32 1639515021, ; 142: System.Net.Http.dll => 0x61b9038d => 143
	i32 1639986890, ; 143: System.Text.RegularExpressions => 0x61c036ca => 180
	i32 1657153582, ; 144: System.Runtime => 0x62c6282e => 167
	i32 1658251792, ; 145: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 109
	i32 1677501392, ; 146: System.Net.Primitives.dll => 0x63fca3d0 => 146
	i32 1679769178, ; 147: System.Security.Cryptography => 0x641f3e5a => 174
	i32 1729485958, ; 148: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1736233607, ; 149: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 36
	i32 1743415430, ; 150: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 14
	i32 1744735666, ; 151: System.Transactions.Local.dll => 0x67fe8db2 => 186
	i32 1750313021, ; 152: Microsoft.Win32.Primitives.dll => 0x6853a83d => 114
	i32 1763938596, ; 153: System.Diagnostics.TraceSource.dll => 0x69239124 => 130
	i32 1766324549, ; 154: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 106
	i32 1770582343, ; 155: Microsoft.Extensions.Logging.dll => 0x6988f147 => 58
	i32 1780572499, ; 156: Mono.Android.Runtime.dll => 0x6a216153 => 195
	i32 1782862114, ; 157: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 30
	i32 1788241197, ; 158: Xamarin.AndroidX.Fragment => 0x6a96652d => 94
	i32 1793755602, ; 159: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 22
	i32 1794500907, ; 160: Microsoft.Identity.Client.dll => 0x6af5e92b => 62
	i32 1796167890, ; 161: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 50
	i32 1808609942, ; 162: Xamarin.AndroidX.Loader => 0x6bcd3296 => 99
	i32 1813058853, ; 163: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 110
	i32 1813201214, ; 164: Xamarin.Google.Android.Material => 0x6c13413e => 109
	i32 1818569960, ; 165: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 103
	i32 1824175904, ; 166: System.Text.Encoding.Extensions => 0x6cbab720 => 177
	i32 1824722060, ; 167: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 163
	i32 1828688058, ; 168: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 59
	i32 1842015223, ; 169: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 42
	i32 1853025655, ; 170: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 39
	i32 1858542181, ; 171: System.Linq.Expressions => 0x6ec71a65 => 140
	i32 1871986876, ; 172: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 68
	i32 1875935024, ; 173: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 21
	i32 1910275211, ; 174: System.Collections.NonGeneric.dll => 0x71dc7c8b => 118
	i32 1939592360, ; 175: System.Private.Xml.Linq => 0x739bd4a8 => 157
	i32 1968388702, ; 176: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 54
	i32 1986222447, ; 177: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 69
	i32 2003115576, ; 178: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 18
	i32 2011961780, ; 179: System.Buffers.dll => 0x77ec19b4 => 115
	i32 2019465201, ; 180: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 97
	i32 2025202353, ; 181: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 13
	i32 2040764568, ; 182: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 63
	i32 2045470958, ; 183: System.Private.Xml => 0x79eb68ee => 158
	i32 2055257422, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 96
	i32 2066184531, ; 185: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 17
	i32 2070888862, ; 186: System.Diagnostics.TraceSource => 0x7b6f419e => 130
	i32 2079903147, ; 187: System.Runtime.dll => 0x7bf8cdab => 167
	i32 2090596640, ; 188: System.Numerics.Vectors => 0x7c9bf920 => 153
	i32 2127167465, ; 189: System.Console => 0x7ec9ffe9 => 124
	i32 2142473426, ; 190: System.Collections.Specialized => 0x7fb38cd2 => 119
	i32 2143790110, ; 191: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 190
	i32 2159891885, ; 192: Microsoft.Maui => 0x80bd55ad => 72
	i32 2169148018, ; 193: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 25
	i32 2181898931, ; 194: Microsoft.Extensions.Options.dll => 0x820d22b3 => 60
	i32 2192057212, ; 195: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 59
	i32 2193016926, ; 196: System.ObjectModel.dll => 0x82b6c85e => 154
	i32 2201107256, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 111
	i32 2201231467, ; 198: System.Net.Http => 0x8334206b => 143
	i32 2207618523, ; 199: it\Microsoft.Maui.Controls.resources => 0x839595db => 27
	i32 2228745826, ; 200: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 8
	i32 2253551641, ; 201: Microsoft.IdentityModel.Protocols => 0x86527819 => 67
	i32 2265110946, ; 202: System.Security.AccessControl.dll => 0x8702d9a2 => 168
	i32 2266799131, ; 203: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 55
	i32 2270573516, ; 204: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 21
	i32 2279755925, ; 205: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 104
	i32 2295906218, ; 206: System.Net.Sockets => 0x88d8bfaa => 150
	i32 2303942373, ; 207: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 31
	i32 2305521784, ; 208: System.Private.CoreLib.dll => 0x896b7878 => 193
	i32 2309278602, ; 209: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 6
	i32 2340441535, ; 210: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 159
	i32 2353062107, ; 211: System.Net.Primitives => 0x8c40e0db => 146
	i32 2368005991, ; 212: System.Xml.ReaderWriter.dll => 0x8d24e767 => 188
	i32 2369706906, ; 213: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 66
	i32 2371007202, ; 214: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 54
	i32 2383496789, ; 215: System.Security.Principal.Windows.dll => 0x8e114655 => 175
	i32 2395872292, ; 216: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 26
	i32 2427813419, ; 217: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 23
	i32 2435356389, ; 218: System.Console.dll => 0x912896e5 => 124
	i32 2458678730, ; 219: System.Net.Sockets.dll => 0x928c75ca => 150
	i32 2471841756, ; 220: netstandard.dll => 0x93554fdc => 192
	i32 2475788418, ; 221: Java.Interop.dll => 0x93918882 => 194
	i32 2480646305, ; 222: Microsoft.Maui.Controls => 0x93dba8a1 => 70
	i32 2484371297, ; 223: System.Net.ServicePoint => 0x94147f61 => 149
	i32 2509217888, ; 224: System.Diagnostics.EventLog => 0x958fa060 => 78
	i32 2550873716, ; 225: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 24
	i32 2562349572, ; 226: Microsoft.CSharp => 0x98ba5a04 => 113
	i32 2570120770, ; 227: System.Text.Encodings.Web => 0x9930ee42 => 178
	i32 2585220780, ; 228: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 177
	i32 2589602615, ; 229: System.Threading.ThreadPool => 0x9a5a3337 => 184
	i32 2593496499, ; 230: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 33
	i32 2605712449, ; 231: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 111
	i32 2617129537, ; 232: System.Private.Xml.dll => 0x9bfe3a41 => 158
	i32 2620871830, ; 233: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 91
	i32 2626831493, ; 234: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 28
	i32 2627185994, ; 235: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 129
	i32 2628210652, ; 236: System.Memory.Data => 0x9ca74fdc => 80
	i32 2640290731, ; 237: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 66
	i32 2640706905, ; 238: Azure.Core => 0x9d65fd59 => 48
	i32 2660759594, ; 239: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 82
	i32 2663698177, ; 240: System.Runtime.Loader => 0x9ec4cf01 => 161
	i32 2664396074, ; 241: System.Xml.XDocument.dll => 0x9ecf752a => 189
	i32 2665622720, ; 242: System.Drawing.Primitives => 0x9ee22cc0 => 132
	i32 2676780864, ; 243: System.Data.Common.dll => 0x9f8c6f40 => 125
	i32 2677098746, ; 244: Azure.Identity.dll => 0x9f9148fa => 49
	i32 2678266992, ; 245: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 10
	i32 2686887180, ; 246: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 166
	i32 2717744543, ; 247: System.Security.Claims => 0xa1fd7d9f => 169
	i32 2724373263, ; 248: System.Runtime.Numerics.dll => 0xa262a30f => 162
	i32 2732626843, ; 249: Xamarin.AndroidX.Activity => 0xa2e0939b => 83
	i32 2735172069, ; 250: System.Threading.Channels => 0xa30769e5 => 181
	i32 2737747696, ; 251: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 85
	i32 2740051746, ; 252: Microsoft.Identity.Client => 0xa351df22 => 62
	i32 2752995522, ; 253: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 34
	i32 2755098380, ; 254: Microsoft.SqlServer.Server.dll => 0xa437770c => 75
	i32 2758225723, ; 255: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 71
	i32 2764765095, ; 256: Microsoft.Maui.dll => 0xa4caf7a7 => 72
	i32 2765824710, ; 257: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 176
	i32 2778768386, ; 258: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2785988530, ; 259: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 40
	i32 2801831435, ; 260: Microsoft.Maui.Graphics => 0xa7008e0b => 74
	i32 2804509662, ; 261: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 2
	i32 2806116107, ; 262: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 19
	i32 2810250172, ; 263: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 89
	i32 2831556043, ; 264: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 32
	i32 2841937114, ; 265: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 4
	i32 2853208004, ; 266: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2861189240, ; 267: Microsoft.Maui.Essentials => 0xaa8a4878 => 73
	i32 2867946736, ; 268: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 82
	i32 2891872470, ; 269: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 0
	i32 2909740682, ; 270: System.Private.CoreLib => 0xad6f1e8a => 193
	i32 2916838712, ; 271: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 272: System.Numerics.Vectors.dll => 0xae037813 => 153
	i32 2940926066, ; 273: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 128
	i32 2944313911, ; 274: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 77
	i32 2959614098, ; 275: System.ComponentModel.dll => 0xb0682092 => 123
	i32 2968338931, ; 276: System.Security.Principal.Windows => 0xb0ed41f3 => 175
	i32 2972252294, ; 277: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 170
	i32 2978675010, ; 278: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 93
	i32 3012788804, ; 279: System.Configuration.ConfigurationManager => 0xb3938244 => 77
	i32 3023511517, ; 280: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 9
	i32 3033605958, ; 281: System.Memory.Data.dll => 0xb4d12746 => 80
	i32 3038032645, ; 282: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 47
	i32 3057625584, ; 283: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 100
	i32 3059408633, ; 284: Mono.Android.Runtime => 0xb65adef9 => 195
	i32 3059793426, ; 285: System.ComponentModel.Primitives => 0xb660be12 => 121
	i32 3069363400, ; 286: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 52
	i32 3077302341, ; 287: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 25
	i32 3084678329, ; 288: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 69
	i32 3090735792, ; 289: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 173
	i32 3099732863, ; 290: System.Security.Claims.dll => 0xb8c22b7f => 169
	i32 3103600923, ; 291: System.Formats.Asn1 => 0xb8fd311b => 134
	i32 3121463068, ; 292: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 137
	i32 3124832203, ; 293: System.Threading.Tasks.Extensions => 0xba4127cb => 182
	i32 3132293585, ; 294: System.Security.AccessControl => 0xbab301d1 => 168
	i32 3147165239, ; 295: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 131
	i32 3158628304, ; 296: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 12
	i32 3178803400, ; 297: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 101
	i32 3195844289, ; 298: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 52
	i32 3220365878, ; 299: System.Threading => 0xbff2e236 => 185
	i32 3258312781, ; 300: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3265893370, ; 301: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 182
	i32 3268887220, ; 302: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 3
	i32 3276600297, ; 303: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 8
	i32 3290767353, ; 304: System.Security.Cryptography.Encoding => 0xc4251ff9 => 171
	i32 3305363605, ; 305: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 20
	i32 3312457198, ; 306: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 65
	i32 3316684772, ; 307: System.Net.Requests.dll => 0xc5b097e4 => 147
	i32 3317135071, ; 308: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 92
	i32 3343947874, ; 309: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 3
	i32 3346324047, ; 310: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 102
	i32 3357674450, ; 311: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 37
	i32 3358260929, ; 312: System.Text.Json => 0xc82afec1 => 179
	i32 3362522851, ; 313: Xamarin.AndroidX.Core => 0xc86c06e3 => 90
	i32 3366347497, ; 314: Java.Interop => 0xc8a662e9 => 194
	i32 3374879918, ; 315: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 67
	i32 3374999561, ; 316: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 104
	i32 3381016424, ; 317: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 16
	i32 3428513518, ; 318: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 56
	i32 3430777524, ; 319: netstandard => 0xcc7d82b4 => 192
	i32 3463511458, ; 320: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 24
	i32 3471940407, ; 321: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 122
	i32 3476120550, ; 322: Mono.Android => 0xcf3163e6 => 196
	i32 3479583265, ; 323: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 37
	i32 3484440000, ; 324: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 36
	i32 3485117614, ; 325: System.Text.Json.dll => 0xcfbaacae => 179
	i32 3509114376, ; 326: System.Xml.Linq => 0xd128d608 => 187
	i32 3545306353, ; 327: Microsoft.Data.SqlClient => 0xd35114f1 => 51
	i32 3555084973, ; 328: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 1
	i32 3558648585, ; 329: System.ClientModel => 0xd41cab09 => 76
	i32 3561949811, ; 330: Azure.Core.dll => 0xd44f0a73 => 48
	i32 3570554715, ; 331: System.IO.FileSystem.AccessControl => 0xd4d2575b => 137
	i32 3580758918, ; 332: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 44
	i32 3608519521, ; 333: System.Linq.dll => 0xd715a361 => 141
	i32 3624195450, ; 334: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 159
	i32 3641597786, ; 335: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 96
	i32 3643446276, ; 336: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 41
	i32 3643854240, ; 337: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 101
	i32 3657292374, ; 338: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 55
	i32 3660523487, ; 339: System.Net.NetworkInformation => 0xda2f27df => 145
	i32 3672681054, ; 340: Mono.Android.dll => 0xdae8aa5e => 196
	i32 3682565725, ; 341: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 86
	i32 3697841164, ; 342: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 46
	i32 3700591436, ; 343: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 64
	i32 3724971120, ; 344: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 100
	i32 3732100267, ; 345: System.Net.NameResolution => 0xde7354ab => 144
	i32 3748608112, ; 346: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 126
	i32 3786282454, ; 347: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3792276235, ; 348: System.Collections.NonGeneric => 0xe2098b0b => 118
	i32 3802395368, ; 349: System.Collections.Specialized.dll => 0xe2a3f2e8 => 119
	i32 3803019198, ; 350: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 11
	i32 3807198597, ; 351: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 81
	i32 3823082795, ; 352: System.Security.Cryptography.dll => 0xe3df9d2b => 174
	i32 3841636137, ; 353: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 57
	i32 3848348906, ; 354: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 2
	i32 3849253459, ; 355: System.Runtime.InteropServices.dll => 0xe56ef253 => 160
	i32 3875112723, ; 356: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 171
	i32 3885497537, ; 357: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 152
	i32 3889960447, ; 358: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 45
	i32 3896106733, ; 359: System.Collections.Concurrent.dll => 0xe839deed => 116
	i32 3896760992, ; 360: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 90
	i32 3928044579, ; 361: System.Xml.ReaderWriter => 0xea213423 => 188
	i32 3931092270, ; 362: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 103
	i32 3953953790, ; 363: System.Text.Encoding.CodePages => 0xebac8bfe => 176
	i32 3955647286, ; 364: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 84
	i32 3980434154, ; 365: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 40
	i32 3987592930, ; 366: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 22
	i32 4003436829, ; 367: System.Diagnostics.Process.dll => 0xee9f991d => 127
	i32 4025784931, ; 368: System.Memory => 0xeff49a63 => 142
	i32 4046471985, ; 369: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 71
	i32 4064142224, ; 370: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 7
	i32 4068434129, ; 371: System.Private.Xml.Linq.dll => 0xf27f60d1 => 157
	i32 4073602200, ; 372: System.Threading.dll => 0xf2ce3c98 => 185
	i32 4094352644, ; 373: Microsoft.Maui.Essentials.dll => 0xf40add04 => 73
	i32 4099507663, ; 374: System.Drawing.dll => 0xf45985cf => 133
	i32 4100113165, ; 375: System.Private.Uri => 0xf462c30d => 156
	i32 4101842092, ; 376: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 53
	i32 4102112229, ; 377: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 35
	i32 4125707920, ; 378: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 30
	i32 4126470640, ; 379: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 56
	i32 4127667938, ; 380: System.IO.FileSystem.Watcher => 0xf60736e2 => 138
	i32 4150914736, ; 381: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 42
	i32 4159265925, ; 382: System.Xml.XmlSerializer => 0xf7e95c85 => 190
	i32 4164802419, ; 383: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 138
	i32 4181436372, ; 384: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 165
	i32 4182413190, ; 385: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 98
	i32 4196529839, ; 386: System.Net.WebClient.dll => 0xfa21f6af => 151
	i32 4213026141, ; 387: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 126
	i32 4257443520, ; 388: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 6
	i32 4260525087, ; 389: System.Buffers => 0xfdf2741f => 115
	i32 4263231520, ; 390: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 79
	i32 4271975918, ; 391: Microsoft.Maui.Controls.dll => 0xfea12dee => 70
	i32 4274976490, ; 392: System.Runtime.Numerics => 0xfecef6ea => 162
	i32 4292120959 ; 393: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 98
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [394 x i32] [
	i32 145, ; 0
	i32 144, ; 1
	i32 183, ; 2
	i32 4, ; 3
	i32 5, ; 4
	i32 128, ; 5
	i32 46, ; 6
	i32 172, ; 7
	i32 74, ; 8
	i32 160, ; 9
	i32 181, ; 10
	i32 5, ; 11
	i32 152, ; 12
	i32 172, ; 13
	i32 88, ; 14
	i32 9, ; 15
	i32 106, ; 16
	i32 43, ; 17
	i32 44, ; 18
	i32 123, ; 19
	i32 86, ; 20
	i32 113, ; 21
	i32 11, ; 22
	i32 15, ; 23
	i32 43, ; 24
	i32 83, ; 25
	i32 75, ; 26
	i32 112, ; 27
	i32 28, ; 28
	i32 95, ; 29
	i32 27, ; 30
	i32 7, ; 31
	i32 139, ; 32
	i32 186, ; 33
	i32 149, ; 34
	i32 183, ; 35
	i32 142, ; 36
	i32 184, ; 37
	i32 47, ; 38
	i32 10, ; 39
	i32 39, ; 40
	i32 120, ; 41
	i32 94, ; 42
	i32 173, ; 43
	i32 165, ; 44
	i32 191, ; 45
	i32 64, ; 46
	i32 154, ; 47
	i32 26, ; 48
	i32 20, ; 49
	i32 61, ; 50
	i32 58, ; 51
	i32 166, ; 52
	i32 50, ; 53
	i32 34, ; 54
	i32 170, ; 55
	i32 92, ; 56
	i32 32, ; 57
	i32 178, ; 58
	i32 116, ; 59
	i32 148, ; 60
	i32 14, ; 61
	i32 187, ; 62
	i32 29, ; 63
	i32 81, ; 64
	i32 17, ; 65
	i32 161, ; 66
	i32 76, ; 67
	i32 147, ; 68
	i32 139, ; 69
	i32 136, ; 70
	i32 38, ; 71
	i32 60, ; 72
	i32 125, ; 73
	i32 112, ; 74
	i32 156, ; 75
	i32 135, ; 76
	i32 121, ; 77
	i32 41, ; 78
	i32 95, ; 79
	i32 131, ; 80
	i32 189, ; 81
	i32 155, ; 82
	i32 120, ; 83
	i32 105, ; 84
	i32 133, ; 85
	i32 57, ; 86
	i32 16, ; 87
	i32 84, ; 88
	i32 132, ; 89
	i32 140, ; 90
	i32 1, ; 91
	i32 97, ; 92
	i32 63, ; 93
	i32 122, ; 94
	i32 110, ; 95
	i32 78, ; 96
	i32 191, ; 97
	i32 29, ; 98
	i32 51, ; 99
	i32 35, ; 100
	i32 102, ; 101
	i32 33, ; 102
	i32 53, ; 103
	i32 127, ; 104
	i32 31, ; 105
	i32 15, ; 106
	i32 93, ; 107
	i32 155, ; 108
	i32 0, ; 109
	i32 141, ; 110
	i32 164, ; 111
	i32 45, ; 112
	i32 105, ; 113
	i32 89, ; 114
	i32 163, ; 115
	i32 13, ; 116
	i32 134, ; 117
	i32 148, ; 118
	i32 79, ; 119
	i32 19, ; 120
	i32 117, ; 121
	i32 136, ; 122
	i32 85, ; 123
	i32 61, ; 124
	i32 117, ; 125
	i32 135, ; 126
	i32 114, ; 127
	i32 23, ; 128
	i32 65, ; 129
	i32 18, ; 130
	i32 129, ; 131
	i32 180, ; 132
	i32 38, ; 133
	i32 164, ; 134
	i32 49, ; 135
	i32 12, ; 136
	i32 151, ; 137
	i32 99, ; 138
	i32 108, ; 139
	i32 68, ; 140
	i32 91, ; 141
	i32 143, ; 142
	i32 180, ; 143
	i32 167, ; 144
	i32 109, ; 145
	i32 146, ; 146
	i32 174, ; 147
	i32 87, ; 148
	i32 36, ; 149
	i32 14, ; 150
	i32 186, ; 151
	i32 114, ; 152
	i32 130, ; 153
	i32 106, ; 154
	i32 58, ; 155
	i32 195, ; 156
	i32 30, ; 157
	i32 94, ; 158
	i32 22, ; 159
	i32 62, ; 160
	i32 50, ; 161
	i32 99, ; 162
	i32 110, ; 163
	i32 109, ; 164
	i32 103, ; 165
	i32 177, ; 166
	i32 163, ; 167
	i32 59, ; 168
	i32 42, ; 169
	i32 39, ; 170
	i32 140, ; 171
	i32 68, ; 172
	i32 21, ; 173
	i32 118, ; 174
	i32 157, ; 175
	i32 54, ; 176
	i32 69, ; 177
	i32 18, ; 178
	i32 115, ; 179
	i32 97, ; 180
	i32 13, ; 181
	i32 63, ; 182
	i32 158, ; 183
	i32 96, ; 184
	i32 17, ; 185
	i32 130, ; 186
	i32 167, ; 187
	i32 153, ; 188
	i32 124, ; 189
	i32 119, ; 190
	i32 190, ; 191
	i32 72, ; 192
	i32 25, ; 193
	i32 60, ; 194
	i32 59, ; 195
	i32 154, ; 196
	i32 111, ; 197
	i32 143, ; 198
	i32 27, ; 199
	i32 8, ; 200
	i32 67, ; 201
	i32 168, ; 202
	i32 55, ; 203
	i32 21, ; 204
	i32 104, ; 205
	i32 150, ; 206
	i32 31, ; 207
	i32 193, ; 208
	i32 6, ; 209
	i32 159, ; 210
	i32 146, ; 211
	i32 188, ; 212
	i32 66, ; 213
	i32 54, ; 214
	i32 175, ; 215
	i32 26, ; 216
	i32 23, ; 217
	i32 124, ; 218
	i32 150, ; 219
	i32 192, ; 220
	i32 194, ; 221
	i32 70, ; 222
	i32 149, ; 223
	i32 78, ; 224
	i32 24, ; 225
	i32 113, ; 226
	i32 178, ; 227
	i32 177, ; 228
	i32 184, ; 229
	i32 33, ; 230
	i32 111, ; 231
	i32 158, ; 232
	i32 91, ; 233
	i32 28, ; 234
	i32 129, ; 235
	i32 80, ; 236
	i32 66, ; 237
	i32 48, ; 238
	i32 82, ; 239
	i32 161, ; 240
	i32 189, ; 241
	i32 132, ; 242
	i32 125, ; 243
	i32 49, ; 244
	i32 10, ; 245
	i32 166, ; 246
	i32 169, ; 247
	i32 162, ; 248
	i32 83, ; 249
	i32 181, ; 250
	i32 85, ; 251
	i32 62, ; 252
	i32 34, ; 253
	i32 75, ; 254
	i32 71, ; 255
	i32 72, ; 256
	i32 176, ; 257
	i32 107, ; 258
	i32 40, ; 259
	i32 74, ; 260
	i32 2, ; 261
	i32 19, ; 262
	i32 89, ; 263
	i32 32, ; 264
	i32 4, ; 265
	i32 107, ; 266
	i32 73, ; 267
	i32 82, ; 268
	i32 0, ; 269
	i32 193, ; 270
	i32 108, ; 271
	i32 153, ; 272
	i32 128, ; 273
	i32 77, ; 274
	i32 123, ; 275
	i32 175, ; 276
	i32 170, ; 277
	i32 93, ; 278
	i32 77, ; 279
	i32 9, ; 280
	i32 80, ; 281
	i32 47, ; 282
	i32 100, ; 283
	i32 195, ; 284
	i32 121, ; 285
	i32 52, ; 286
	i32 25, ; 287
	i32 69, ; 288
	i32 173, ; 289
	i32 169, ; 290
	i32 134, ; 291
	i32 137, ; 292
	i32 182, ; 293
	i32 168, ; 294
	i32 131, ; 295
	i32 12, ; 296
	i32 101, ; 297
	i32 52, ; 298
	i32 185, ; 299
	i32 87, ; 300
	i32 182, ; 301
	i32 3, ; 302
	i32 8, ; 303
	i32 171, ; 304
	i32 20, ; 305
	i32 65, ; 306
	i32 147, ; 307
	i32 92, ; 308
	i32 3, ; 309
	i32 102, ; 310
	i32 37, ; 311
	i32 179, ; 312
	i32 90, ; 313
	i32 194, ; 314
	i32 67, ; 315
	i32 104, ; 316
	i32 16, ; 317
	i32 56, ; 318
	i32 192, ; 319
	i32 24, ; 320
	i32 122, ; 321
	i32 196, ; 322
	i32 37, ; 323
	i32 36, ; 324
	i32 179, ; 325
	i32 187, ; 326
	i32 51, ; 327
	i32 1, ; 328
	i32 76, ; 329
	i32 48, ; 330
	i32 137, ; 331
	i32 44, ; 332
	i32 141, ; 333
	i32 159, ; 334
	i32 96, ; 335
	i32 41, ; 336
	i32 101, ; 337
	i32 55, ; 338
	i32 145, ; 339
	i32 196, ; 340
	i32 86, ; 341
	i32 46, ; 342
	i32 64, ; 343
	i32 100, ; 344
	i32 144, ; 345
	i32 126, ; 346
	i32 88, ; 347
	i32 118, ; 348
	i32 119, ; 349
	i32 11, ; 350
	i32 81, ; 351
	i32 174, ; 352
	i32 57, ; 353
	i32 2, ; 354
	i32 160, ; 355
	i32 171, ; 356
	i32 152, ; 357
	i32 45, ; 358
	i32 116, ; 359
	i32 90, ; 360
	i32 188, ; 361
	i32 103, ; 362
	i32 176, ; 363
	i32 84, ; 364
	i32 40, ; 365
	i32 22, ; 366
	i32 127, ; 367
	i32 142, ; 368
	i32 71, ; 369
	i32 7, ; 370
	i32 157, ; 371
	i32 185, ; 372
	i32 73, ; 373
	i32 133, ; 374
	i32 156, ; 375
	i32 53, ; 376
	i32 35, ; 377
	i32 30, ; 378
	i32 56, ; 379
	i32 138, ; 380
	i32 42, ; 381
	i32 190, ; 382
	i32 138, ; 383
	i32 165, ; 384
	i32 98, ; 385
	i32 151, ; 386
	i32 126, ; 387
	i32 6, ; 388
	i32 115, ; 389
	i32 79, ; 390
	i32 70, ; 391
	i32 162, ; 392
	i32 98 ; 393
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
