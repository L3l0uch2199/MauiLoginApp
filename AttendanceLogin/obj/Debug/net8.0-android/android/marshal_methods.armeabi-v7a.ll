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

@assembly_image_cache = dso_local local_unnamed_addr global [350 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [694 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 253
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 287
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 8: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 299
	i32 57727992, ; 9: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 300
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 341
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 203
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 271
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 271
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 291
	i32 139659294, ; 20: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 300
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 227
	i32 166535111, ; 25: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 304
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 273
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 338
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 339
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 225
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 247
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 230
	i32 264223668, ; 40: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 306
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 249
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 246
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 310
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 338
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 216
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 50: Microsoft.SqlServer.Server => 0x13ada4fd => 204
	i32 332551172, ; 51: AttendanceLogin.dll => 0x13d25404 => 0
	i32 336156722, ; 52: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 323
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 248
	i32 356389973, ; 54: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 322
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 360671332, ; 56: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 302
	i32 367780167, ; 57: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 58: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 59: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 60: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 61: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 62: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 63: _Microsoft.Android.Resource.Designer => 0x17969339 => 346
	i32 403441872, ; 64: WindowsBase => 0x180c08d0 => 165
	i32 407321033, ; 65: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 305
	i32 435591531, ; 66: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 334
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 231
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 69: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 244
	i32 451504562, ; 70: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 71: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 74: System.dll => 0x1bff388e => 164
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 246
	i32 485463106, ; 76: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 192
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 259
	i32 498788369, ; 78: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 79: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 321
	i32 503918385, ; 80: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 315
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 189
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 291
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 185
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 89: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 176
	i32 549171840, ; 90: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 91: Jsr305Binding => 0x213954e7 => 284
	i32 569601784, ; 92: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 282
	i32 577335427, ; 93: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 94: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 329
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 97: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 236
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 327
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 242
	i32 643868501, ; 101: System.Net => 0x2660a755 => 81
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 278
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 223
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 106: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 107: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 309
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 293
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 288
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 324
	i32 709152836, ; 115: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 210
	i32 709557578, ; 116: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 312
	i32 720511267, ; 117: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 292
	i32 722857257, ; 118: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 119: System.ClientModel.dll => 0x2b244044 => 205
	i32 735137430, ; 120: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 121: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 122: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 213
	i32 759454413, ; 123: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 124: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 125: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 126: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 333
	i32 789151979, ; 127: Microsoft.Extensions.Options => 0x2f0980eb => 188
	i32 790371945, ; 128: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 237
	i32 804715423, ; 129: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 130: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 251
	i32 809140021, ; 131: AttendanceLogin => 0x303a7f35 => 0
	i32 823281589, ; 132: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 133: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 134: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 135: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 136: Xamarin.AndroidX.Print => 0x3246f6cd => 264
	i32 873119928, ; 137: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 138: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 139: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 142: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 336
	i32 928116545, ; 143: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 287
	i32 952186615, ; 144: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 292
	i32 966729478, ; 146: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 285
	i32 967690846, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 248
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 154: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 155: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 268
	i32 1019214401, ; 156: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 157: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 184
	i32 1029334545, ; 158: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 311
	i32 1031528504, ; 159: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 286
	i32 1035644815, ; 160: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 221
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 162: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 163: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 296
	i32 1052210849, ; 164: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 255
	i32 1062017875, ; 165: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 191
	i32 1067306892, ; 166: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 167: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 168: Xamarin.Kotlin.StdLib => 0x409e66d8 => 289
	i32 1089913930, ; 169: System.Diagnostics.EventLog.dll => 0x40f6c44a => 207
	i32 1098259244, ; 170: System => 0x41761b2c => 164
	i32 1118262833, ; 171: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 324
	i32 1121599056, ; 172: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 254
	i32 1127624469, ; 173: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 187
	i32 1138436374, ; 174: Microsoft.Data.SqlClient.dll => 0x43db2916 => 178
	i32 1149092582, ; 175: Xamarin.AndroidX.Window => 0x447dc2e6 => 281
	i32 1168523401, ; 176: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 330
	i32 1170634674, ; 177: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 178: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 277
	i32 1178241025, ; 179: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 262
	i32 1181870847, ; 180: Microsoft.Bcl.Cryptography => 0x4671eaff => 177
	i32 1203215381, ; 181: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 328
	i32 1204270330, ; 182: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 223
	i32 1204575371, ; 183: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 180
	i32 1208641965, ; 184: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 185: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 186: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 326
	i32 1243150071, ; 187: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 282
	i32 1253011324, ; 188: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 189: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 310
	i32 1264511973, ; 190: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 272
	i32 1267360935, ; 191: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 276
	i32 1273260888, ; 192: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 228
	i32 1275534314, ; 193: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 293
	i32 1278448581, ; 194: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 220
	i32 1293217323, ; 195: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 239
	i32 1309188875, ; 196: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1315359775, ; 197: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 295
	i32 1322716291, ; 198: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 281
	i32 1324164729, ; 199: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 200: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 201: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 202: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 340
	i32 1376866003, ; 203: Xamarin.AndroidX.SavedState => 0x52114ed3 => 268
	i32 1379779777, ; 204: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 205: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 206: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 232
	i32 1408764838, ; 207: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 208: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 209: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 210: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 308
	i32 1434145427, ; 211: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 212: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 285
	i32 1439761251, ; 213: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 214: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 215: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 216: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 217: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 218: System.IdentityModel.Tokens.Jwt => 0x57137723 => 208
	i32 1461004990, ; 219: es\Microsoft.Maui.Controls.resources => 0x57152abe => 314
	i32 1461234159, ; 220: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 221: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 222: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 223: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 222
	i32 1470490898, ; 224: Microsoft.Extensions.Primitives => 0x57a5e912 => 189
	i32 1479771757, ; 225: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 226: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 227: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 228: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 269
	i32 1493001747, ; 229: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 318
	i32 1498168481, ; 230: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 193
	i32 1514721132, ; 231: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 313
	i32 1536373174, ; 232: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 233: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 234: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 235: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 236: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 333
	i32 1565862583, ; 237: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 238: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 239: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 240: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 241: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 242: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 238
	i32 1592978981, ; 243: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 244: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 307
	i32 1597949149, ; 245: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 286
	i32 1601112923, ; 246: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 247: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 342
	i32 1604827217, ; 248: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 249: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 250: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 258
	i32 1622358360, ; 251: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 252: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 280
	i32 1628113371, ; 253: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 196
	i32 1635184631, ; 254: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 242
	i32 1636350590, ; 255: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 235
	i32 1639515021, ; 256: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 257: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 258: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 259: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 260: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 274
	i32 1658251792, ; 261: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 283
	i32 1670060433, ; 262: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 230
	i32 1675553242, ; 263: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 264: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 265: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 266: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 267: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 268: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 269: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 290
	i32 1701541528, ; 270: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 271: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 251
	i32 1726116996, ; 272: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 273: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 274: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 226
	i32 1736233607, ; 275: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 331
	i32 1743415430, ; 276: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 309
	i32 1744735666, ; 277: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 278: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 279: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 280: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 281: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 282: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 283: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 273
	i32 1770582343, ; 284: Microsoft.Extensions.Logging.dll => 0x6988f147 => 185
	i32 1776026572, ; 285: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 286: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 287: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 288: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 325
	i32 1788241197, ; 289: Xamarin.AndroidX.Fragment => 0x6a96652d => 244
	i32 1793755602, ; 290: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 317
	i32 1794500907, ; 291: Microsoft.Identity.Client.dll => 0x6af5e92b => 190
	i32 1796167890, ; 292: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 176
	i32 1808609942, ; 293: Xamarin.AndroidX.Loader => 0x6bcd3296 => 258
	i32 1813058853, ; 294: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 289
	i32 1813201214, ; 295: Xamarin.Google.Android.Material => 0x6c13413e => 283
	i32 1818569960, ; 296: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 263
	i32 1818787751, ; 297: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 298: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 299: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 300: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 344
	i32 1828688058, ; 301: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 186
	i32 1842015223, ; 302: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 337
	i32 1847515442, ; 303: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 213
	i32 1853025655, ; 304: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 334
	i32 1858542181, ; 305: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 306: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 307: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 196
	i32 1875935024, ; 308: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 316
	i32 1879696579, ; 309: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 310: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 224
	i32 1885918049, ; 311: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 344
	i32 1888955245, ; 312: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 313: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 314: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 315: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 316: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 317: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 318: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 319: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 270
	i32 1968388702, ; 320: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 321: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 290
	i32 1985761444, ; 322: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 215
	i32 1986222447, ; 323: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 197
	i32 2003115576, ; 324: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 313
	i32 2011961780, ; 325: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 326: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 255
	i32 2025202353, ; 327: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 308
	i32 2031763787, ; 328: Xamarin.Android.Glide => 0x791a414b => 212
	i32 2040764568, ; 329: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 191
	i32 2045470958, ; 330: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 331: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 250
	i32 2060060697, ; 332: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 333: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 312
	i32 2070888862, ; 334: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 335: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 336: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2117912485, ; 337: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 0x7e3cc7a5 => 345
	i32 2127167465, ; 338: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 339: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 340: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 341: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 342: Microsoft.Maui => 0x80bd55ad => 201
	i32 2169148018, ; 343: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 320
	i32 2181898931, ; 344: Microsoft.Extensions.Options.dll => 0x820d22b3 => 188
	i32 2192057212, ; 345: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 186
	i32 2193016926, ; 346: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 347: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 294
	i32 2201231467, ; 348: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 349: it\Microsoft.Maui.Controls.resources => 0x839595db => 322
	i32 2217644978, ; 350: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 277
	i32 2222056684, ; 351: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 352: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 303
	i32 2244775296, ; 353: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 259
	i32 2252106437, ; 354: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 355: Microsoft.IdentityModel.Protocols => 0x86527819 => 195
	i32 2256313426, ; 356: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 357: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 358: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 359: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 214
	i32 2270573516, ; 360: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 316
	i32 2279755925, ; 361: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 266
	i32 2293034957, ; 362: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 363: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 364: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 365: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 326
	i32 2305521784, ; 366: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 367: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 301
	i32 2315684594, ; 368: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 218
	i32 2320631194, ; 369: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 370: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 371: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 372: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 373: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 374: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 194
	i32 2371007202, ; 375: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 376: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 377: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 378: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 321
	i32 2401565422, ; 379: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 380: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 241
	i32 2409983638, ; 381: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 343
	i32 2421380589, ; 382: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 383: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 228
	i32 2427813419, ; 384: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 318
	i32 2435356389, ; 385: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 386: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 387: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 388: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 389: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 390: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 231
	i32 2471841756, ; 391: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 392: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 393: Microsoft.Maui.Controls => 0x93dba8a1 => 199
	i32 2483903535, ; 394: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 395: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 396: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 397: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 398: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 253
	i32 2509217888, ; 399: System.Diagnostics.EventLog => 0x958fa060 => 207
	i32 2522472828, ; 400: Xamarin.Android.Glide.dll => 0x9659e17c => 212
	i32 2538310050, ; 401: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 402: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 319
	i32 2562349572, ; 403: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 404: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 405: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 254
	i32 2581819634, ; 406: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 276
	i32 2585220780, ; 407: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 408: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 409: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 410: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 328
	i32 2605712449, ; 411: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 294
	i32 2615233544, ; 412: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 245
	i32 2616218305, ; 413: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 187
	i32 2617129537, ; 414: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 415: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 416: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 235
	i32 2624644809, ; 417: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 240
	i32 2626831493, ; 418: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 323
	i32 2627185994, ; 419: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 420: System.Memory.Data => 0x9ca74fdc => 209
	i32 2629843544, ; 421: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 422: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 249
	i32 2640290731, ; 423: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 194
	i32 2640706905, ; 424: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 425: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 211
	i32 2663391936, ; 426: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 214
	i32 2663698177, ; 427: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 428: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 429: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 430: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 431: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2678266992, ; 432: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 305
	i32 2686887180, ; 433: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 434: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 435: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 274
	i32 2715334215, ; 436: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 437: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 438: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 439: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 440: Xamarin.AndroidX.Activity => 0xa2e0939b => 216
	i32 2735172069, ; 441: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 442: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 222
	i32 2740051746, ; 443: Microsoft.Identity.Client => 0xa351df22 => 190
	i32 2740948882, ; 444: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 445: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 446: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 329
	i32 2755098380, ; 447: Microsoft.SqlServer.Server.dll => 0xa437770c => 204
	i32 2758225723, ; 448: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 200
	i32 2764765095, ; 449: Microsoft.Maui.dll => 0xa4caf7a7 => 201
	i32 2765824710, ; 450: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 451: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 288
	i32 2778768386, ; 452: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 279
	i32 2779977773, ; 453: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 267
	i32 2785988530, ; 454: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 335
	i32 2788224221, ; 455: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 245
	i32 2801831435, ; 456: Microsoft.Maui.Graphics => 0xa7008e0b => 203
	i32 2803228030, ; 457: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 458: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 297
	i32 2806116107, ; 459: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 314
	i32 2810250172, ; 460: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 232
	i32 2819470561, ; 461: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 462: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 463: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 267
	i32 2824502124, ; 464: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 465: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 327
	i32 2838993487, ; 466: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 256
	i32 2841937114, ; 467: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 299
	i32 2849599387, ; 468: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 469: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 279
	i32 2855708567, ; 470: Xamarin.AndroidX.Transition => 0xaa36a797 => 275
	i32 2861098320, ; 471: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 472: Microsoft.Maui.Essentials => 0xaa8a4878 => 202
	i32 2867946736, ; 473: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 211
	i32 2870099610, ; 474: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 217
	i32 2875164099, ; 475: Jsr305Binding.dll => 0xab5f85c3 => 284
	i32 2875220617, ; 476: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 477: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 243
	i32 2887636118, ; 478: System.Net.dll => 0xac1dd496 => 81
	i32 2891872470, ; 479: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 295
	i32 2899753641, ; 480: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 481: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 482: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 483: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 484: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 485: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 280
	i32 2919462931, ; 486: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 487: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 219
	i32 2936416060, ; 488: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 489: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 490: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 491: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 206
	i32 2959614098, ; 492: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 493: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 494: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 495: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 239
	i32 2987532451, ; 496: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 270
	i32 2996846495, ; 497: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 252
	i32 3012788804, ; 498: System.Configuration.ConfigurationManager => 0xb3938244 => 206
	i32 3016983068, ; 499: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 272
	i32 3023353419, ; 500: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 501: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 304
	i32 3024354802, ; 502: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 247
	i32 3033605958, ; 503: System.Memory.Data.dll => 0xb4d12746 => 209
	i32 3038032645, ; 504: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 346
	i32 3056245963, ; 505: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 269
	i32 3057625584, ; 506: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 260
	i32 3059408633, ; 507: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 508: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 509: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 179
	i32 3075834255, ; 510: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 511: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 320
	i32 3084678329, ; 512: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 197
	i32 3090735792, ; 513: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 514: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 515: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 516: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 517: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 518: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 519: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 520: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 521: GoogleGson.dll => 0xbba64c02 => 175
	i32 3158628304, ; 522: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 307
	i32 3159123045, ; 523: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 524: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 525: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 261
	i32 3192346100, ; 526: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 527: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 528: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 179
	i32 3204380047, ; 529: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 530: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 531: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 238
	i32 3217618498, ; 532: Microsoft.VisualStudio.DesignTools.XamlTapContract => 0xbfc8f642 => 345
	i32 3220365878, ; 533: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 534: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 535: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 536: Xamarin.AndroidX.CardView => 0xc235e84d => 226
	i32 3265493905, ; 537: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 538: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 539: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 298
	i32 3276600297, ; 540: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 303
	i32 3277815716, ; 541: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 542: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 543: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 544: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 545: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 546: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 547: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 315
	i32 3312457198, ; 548: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 193
	i32 3316684772, ; 549: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 550: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 236
	i32 3317144872, ; 551: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 552: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 224
	i32 3343947874, ; 553: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 298
	i32 3345895724, ; 554: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 265
	i32 3346324047, ; 555: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 262
	i32 3357674450, ; 556: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 332
	i32 3358260929, ; 557: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 558: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 217
	i32 3362522851, ; 559: Xamarin.AndroidX.Core => 0xc86c06e3 => 233
	i32 3366347497, ; 560: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 561: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 195
	i32 3374999561, ; 562: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 266
	i32 3381016424, ; 563: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 311
	i32 3395150330, ; 564: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 565: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 566: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 237
	i32 3428513518, ; 567: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 183
	i32 3429136800, ; 568: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 569: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 570: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 240
	i32 3445260447, ; 571: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 572: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 198
	i32 3463511458, ; 573: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 319
	i32 3471940407, ; 574: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 575: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 576: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 332
	i32 3484440000, ; 577: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 331
	i32 3485117614, ; 578: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 579: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 580: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 229
	i32 3509114376, ; 581: System.Xml.Linq => 0xd128d608 => 155
	i32 3512826571, ; 582: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 177
	i32 3515174580, ; 583: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 584: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 585: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 586: Microsoft.Data.SqlClient => 0xd35114f1 => 178
	i32 3555084973, ; 587: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 296
	i32 3558648585, ; 588: System.ClientModel => 0xd41cab09 => 205
	i32 3560100363, ; 589: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 590: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 591: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 592: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 339
	i32 3597029428, ; 593: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 215
	i32 3598340787, ; 594: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 595: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 596: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 597: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 264
	i32 3633644679, ; 598: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 219
	i32 3638274909, ; 599: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 600: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 250
	i32 3643446276, ; 601: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 336
	i32 3643854240, ; 602: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 261
	i32 3645089577, ; 603: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 604: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 605: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 606: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 607: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 342
	i32 3682565725, ; 608: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 225
	i32 3684561358, ; 609: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 229
	i32 3697841164, ; 610: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 341
	i32 3700591436, ; 611: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 192
	i32 3700866549, ; 612: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 613: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 234
	i32 3716563718, ; 614: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 615: Xamarin.AndroidX.Annotation => 0xdda814c6 => 218
	i32 3724971120, ; 616: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 260
	i32 3732100267, ; 617: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 618: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 619: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 620: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 621: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 227
	i32 3792276235, ; 622: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 623: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 198
	i32 3802395368, ; 624: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 625: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 306
	i32 3807198597, ; 626: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 210
	i32 3819260425, ; 627: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 628: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 629: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 630: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 184
	i32 3844307129, ; 631: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 632: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 297
	i32 3849253459, ; 633: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 634: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 635: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 636: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 637: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 638: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 275
	i32 3888767677, ; 639: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 265
	i32 3889960447, ; 640: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 340
	i32 3896106733, ; 641: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 642: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 233
	i32 3901907137, ; 643: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 644: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 645: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 278
	i32 3928044579, ; 646: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 647: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 648: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 263
	i32 3945713374, ; 649: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 650: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 651: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 221
	i32 3959773229, ; 652: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 252
	i32 3980434154, ; 653: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 335
	i32 3987592930, ; 654: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 317
	i32 4003436829, ; 655: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 656: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 220
	i32 4025784931, ; 657: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 658: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 200
	i32 4054681211, ; 659: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4064142224, ; 660: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 302
	i32 4068434129, ; 661: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 662: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 663: Microsoft.Maui.Essentials.dll => 0xf40add04 => 202
	i32 4099507663, ; 664: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 665: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 666: Xamarin.AndroidX.Emoji2 => 0xf479582c => 241
	i32 4101842092, ; 667: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 180
	i32 4102112229, ; 668: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 330
	i32 4125707920, ; 669: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 325
	i32 4126470640, ; 670: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 183
	i32 4127667938, ; 671: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 672: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 673: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 674: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 337
	i32 4151237749, ; 675: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 676: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 677: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 678: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 679: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 680: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 257
	i32 4182880526, ; 681: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 343
	i32 4185676441, ; 682: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 683: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 684: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 685: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 234
	i32 4257443520, ; 686: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 301
	i32 4258378803, ; 687: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 256
	i32 4260525087, ; 688: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 689: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 208
	i32 4271975918, ; 690: Microsoft.Maui.Controls.dll => 0xfea12dee => 199
	i32 4274976490, ; 691: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 692: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 257
	i32 4294763496 ; 693: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 243
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [694 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 253, ; 3
	i32 287, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 299, ; 8
	i32 300, ; 9
	i32 30, ; 10
	i32 341, ; 11
	i32 124, ; 12
	i32 203, ; 13
	i32 102, ; 14
	i32 271, ; 15
	i32 107, ; 16
	i32 271, ; 17
	i32 139, ; 18
	i32 291, ; 19
	i32 300, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 227, ; 24
	i32 304, ; 25
	i32 132, ; 26
	i32 273, ; 27
	i32 151, ; 28
	i32 338, ; 29
	i32 339, ; 30
	i32 18, ; 31
	i32 225, ; 32
	i32 26, ; 33
	i32 247, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 230, ; 39
	i32 306, ; 40
	i32 147, ; 41
	i32 249, ; 42
	i32 246, ; 43
	i32 310, ; 44
	i32 54, ; 45
	i32 69, ; 46
	i32 338, ; 47
	i32 216, ; 48
	i32 83, ; 49
	i32 204, ; 50
	i32 0, ; 51
	i32 323, ; 52
	i32 248, ; 53
	i32 322, ; 54
	i32 131, ; 55
	i32 302, ; 56
	i32 55, ; 57
	i32 149, ; 58
	i32 74, ; 59
	i32 145, ; 60
	i32 62, ; 61
	i32 146, ; 62
	i32 346, ; 63
	i32 165, ; 64
	i32 305, ; 65
	i32 334, ; 66
	i32 231, ; 67
	i32 12, ; 68
	i32 244, ; 69
	i32 125, ; 70
	i32 152, ; 71
	i32 113, ; 72
	i32 166, ; 73
	i32 164, ; 74
	i32 246, ; 75
	i32 192, ; 76
	i32 259, ; 77
	i32 84, ; 78
	i32 321, ; 79
	i32 315, ; 80
	i32 189, ; 81
	i32 150, ; 82
	i32 291, ; 83
	i32 60, ; 84
	i32 185, ; 85
	i32 51, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 176, ; 89
	i32 40, ; 90
	i32 284, ; 91
	i32 282, ; 92
	i32 120, ; 93
	i32 329, ; 94
	i32 52, ; 95
	i32 44, ; 96
	i32 119, ; 97
	i32 236, ; 98
	i32 327, ; 99
	i32 242, ; 100
	i32 81, ; 101
	i32 136, ; 102
	i32 278, ; 103
	i32 223, ; 104
	i32 8, ; 105
	i32 73, ; 106
	i32 309, ; 107
	i32 155, ; 108
	i32 293, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 288, ; 112
	i32 45, ; 113
	i32 324, ; 114
	i32 210, ; 115
	i32 312, ; 116
	i32 292, ; 117
	i32 109, ; 118
	i32 205, ; 119
	i32 129, ; 120
	i32 25, ; 121
	i32 213, ; 122
	i32 72, ; 123
	i32 55, ; 124
	i32 46, ; 125
	i32 333, ; 126
	i32 188, ; 127
	i32 237, ; 128
	i32 22, ; 129
	i32 251, ; 130
	i32 0, ; 131
	i32 86, ; 132
	i32 43, ; 133
	i32 160, ; 134
	i32 71, ; 135
	i32 264, ; 136
	i32 3, ; 137
	i32 42, ; 138
	i32 63, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 336, ; 142
	i32 287, ; 143
	i32 105, ; 144
	i32 292, ; 145
	i32 285, ; 146
	i32 248, ; 147
	i32 34, ; 148
	i32 158, ; 149
	i32 85, ; 150
	i32 32, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 56, ; 154
	i32 268, ; 155
	i32 36, ; 156
	i32 184, ; 157
	i32 311, ; 158
	i32 286, ; 159
	i32 221, ; 160
	i32 35, ; 161
	i32 58, ; 162
	i32 296, ; 163
	i32 255, ; 164
	i32 191, ; 165
	i32 175, ; 166
	i32 17, ; 167
	i32 289, ; 168
	i32 207, ; 169
	i32 164, ; 170
	i32 324, ; 171
	i32 254, ; 172
	i32 187, ; 173
	i32 178, ; 174
	i32 281, ; 175
	i32 330, ; 176
	i32 153, ; 177
	i32 277, ; 178
	i32 262, ; 179
	i32 177, ; 180
	i32 328, ; 181
	i32 223, ; 182
	i32 180, ; 183
	i32 29, ; 184
	i32 52, ; 185
	i32 326, ; 186
	i32 282, ; 187
	i32 5, ; 188
	i32 310, ; 189
	i32 272, ; 190
	i32 276, ; 191
	i32 228, ; 192
	i32 293, ; 193
	i32 220, ; 194
	i32 239, ; 195
	i32 85, ; 196
	i32 295, ; 197
	i32 281, ; 198
	i32 61, ; 199
	i32 112, ; 200
	i32 57, ; 201
	i32 340, ; 202
	i32 268, ; 203
	i32 99, ; 204
	i32 19, ; 205
	i32 232, ; 206
	i32 111, ; 207
	i32 101, ; 208
	i32 102, ; 209
	i32 308, ; 210
	i32 104, ; 211
	i32 285, ; 212
	i32 71, ; 213
	i32 38, ; 214
	i32 32, ; 215
	i32 103, ; 216
	i32 73, ; 217
	i32 208, ; 218
	i32 314, ; 219
	i32 9, ; 220
	i32 123, ; 221
	i32 46, ; 222
	i32 222, ; 223
	i32 189, ; 224
	i32 9, ; 225
	i32 43, ; 226
	i32 4, ; 227
	i32 269, ; 228
	i32 318, ; 229
	i32 193, ; 230
	i32 313, ; 231
	i32 31, ; 232
	i32 138, ; 233
	i32 92, ; 234
	i32 93, ; 235
	i32 333, ; 236
	i32 49, ; 237
	i32 141, ; 238
	i32 112, ; 239
	i32 140, ; 240
	i32 174, ; 241
	i32 238, ; 242
	i32 115, ; 243
	i32 307, ; 244
	i32 286, ; 245
	i32 157, ; 246
	i32 342, ; 247
	i32 76, ; 248
	i32 79, ; 249
	i32 258, ; 250
	i32 37, ; 251
	i32 280, ; 252
	i32 196, ; 253
	i32 242, ; 254
	i32 235, ; 255
	i32 64, ; 256
	i32 138, ; 257
	i32 15, ; 258
	i32 116, ; 259
	i32 274, ; 260
	i32 283, ; 261
	i32 230, ; 262
	i32 48, ; 263
	i32 70, ; 264
	i32 80, ; 265
	i32 126, ; 266
	i32 94, ; 267
	i32 121, ; 268
	i32 290, ; 269
	i32 26, ; 270
	i32 251, ; 271
	i32 97, ; 272
	i32 28, ; 273
	i32 226, ; 274
	i32 331, ; 275
	i32 309, ; 276
	i32 149, ; 277
	i32 169, ; 278
	i32 4, ; 279
	i32 98, ; 280
	i32 33, ; 281
	i32 93, ; 282
	i32 273, ; 283
	i32 185, ; 284
	i32 21, ; 285
	i32 41, ; 286
	i32 170, ; 287
	i32 325, ; 288
	i32 244, ; 289
	i32 317, ; 290
	i32 190, ; 291
	i32 176, ; 292
	i32 258, ; 293
	i32 289, ; 294
	i32 283, ; 295
	i32 263, ; 296
	i32 2, ; 297
	i32 134, ; 298
	i32 111, ; 299
	i32 344, ; 300
	i32 186, ; 301
	i32 337, ; 302
	i32 213, ; 303
	i32 334, ; 304
	i32 58, ; 305
	i32 95, ; 306
	i32 196, ; 307
	i32 316, ; 308
	i32 39, ; 309
	i32 224, ; 310
	i32 344, ; 311
	i32 25, ; 312
	i32 94, ; 313
	i32 89, ; 314
	i32 99, ; 315
	i32 10, ; 316
	i32 87, ; 317
	i32 100, ; 318
	i32 270, ; 319
	i32 181, ; 320
	i32 290, ; 321
	i32 215, ; 322
	i32 197, ; 323
	i32 313, ; 324
	i32 7, ; 325
	i32 255, ; 326
	i32 308, ; 327
	i32 212, ; 328
	i32 191, ; 329
	i32 88, ; 330
	i32 250, ; 331
	i32 154, ; 332
	i32 312, ; 333
	i32 33, ; 334
	i32 116, ; 335
	i32 82, ; 336
	i32 345, ; 337
	i32 20, ; 338
	i32 11, ; 339
	i32 162, ; 340
	i32 3, ; 341
	i32 201, ; 342
	i32 320, ; 343
	i32 188, ; 344
	i32 186, ; 345
	i32 84, ; 346
	i32 294, ; 347
	i32 64, ; 348
	i32 322, ; 349
	i32 277, ; 350
	i32 143, ; 351
	i32 303, ; 352
	i32 259, ; 353
	i32 157, ; 354
	i32 195, ; 355
	i32 41, ; 356
	i32 117, ; 357
	i32 182, ; 358
	i32 214, ; 359
	i32 316, ; 360
	i32 266, ; 361
	i32 131, ; 362
	i32 75, ; 363
	i32 66, ; 364
	i32 326, ; 365
	i32 172, ; 366
	i32 301, ; 367
	i32 218, ; 368
	i32 143, ; 369
	i32 106, ; 370
	i32 151, ; 371
	i32 70, ; 372
	i32 156, ; 373
	i32 194, ; 374
	i32 181, ; 375
	i32 121, ; 376
	i32 127, ; 377
	i32 321, ; 378
	i32 152, ; 379
	i32 241, ; 380
	i32 343, ; 381
	i32 141, ; 382
	i32 228, ; 383
	i32 318, ; 384
	i32 20, ; 385
	i32 14, ; 386
	i32 135, ; 387
	i32 75, ; 388
	i32 59, ; 389
	i32 231, ; 390
	i32 167, ; 391
	i32 168, ; 392
	i32 199, ; 393
	i32 15, ; 394
	i32 74, ; 395
	i32 6, ; 396
	i32 23, ; 397
	i32 253, ; 398
	i32 207, ; 399
	i32 212, ; 400
	i32 91, ; 401
	i32 319, ; 402
	i32 1, ; 403
	i32 136, ; 404
	i32 254, ; 405
	i32 276, ; 406
	i32 134, ; 407
	i32 69, ; 408
	i32 146, ; 409
	i32 328, ; 410
	i32 294, ; 411
	i32 245, ; 412
	i32 187, ; 413
	i32 88, ; 414
	i32 96, ; 415
	i32 235, ; 416
	i32 240, ; 417
	i32 323, ; 418
	i32 31, ; 419
	i32 209, ; 420
	i32 45, ; 421
	i32 249, ; 422
	i32 194, ; 423
	i32 173, ; 424
	i32 211, ; 425
	i32 214, ; 426
	i32 109, ; 427
	i32 158, ; 428
	i32 35, ; 429
	i32 22, ; 430
	i32 174, ; 431
	i32 305, ; 432
	i32 114, ; 433
	i32 57, ; 434
	i32 274, ; 435
	i32 144, ; 436
	i32 118, ; 437
	i32 120, ; 438
	i32 110, ; 439
	i32 216, ; 440
	i32 139, ; 441
	i32 222, ; 442
	i32 190, ; 443
	i32 54, ; 444
	i32 105, ; 445
	i32 329, ; 446
	i32 204, ; 447
	i32 200, ; 448
	i32 201, ; 449
	i32 133, ; 450
	i32 288, ; 451
	i32 279, ; 452
	i32 267, ; 453
	i32 335, ; 454
	i32 245, ; 455
	i32 203, ; 456
	i32 159, ; 457
	i32 297, ; 458
	i32 314, ; 459
	i32 232, ; 460
	i32 163, ; 461
	i32 132, ; 462
	i32 267, ; 463
	i32 161, ; 464
	i32 327, ; 465
	i32 256, ; 466
	i32 299, ; 467
	i32 140, ; 468
	i32 279, ; 469
	i32 275, ; 470
	i32 169, ; 471
	i32 202, ; 472
	i32 211, ; 473
	i32 217, ; 474
	i32 284, ; 475
	i32 40, ; 476
	i32 243, ; 477
	i32 81, ; 478
	i32 295, ; 479
	i32 56, ; 480
	i32 37, ; 481
	i32 97, ; 482
	i32 166, ; 483
	i32 172, ; 484
	i32 280, ; 485
	i32 82, ; 486
	i32 219, ; 487
	i32 98, ; 488
	i32 30, ; 489
	i32 159, ; 490
	i32 206, ; 491
	i32 18, ; 492
	i32 127, ; 493
	i32 119, ; 494
	i32 239, ; 495
	i32 270, ; 496
	i32 252, ; 497
	i32 206, ; 498
	i32 272, ; 499
	i32 165, ; 500
	i32 304, ; 501
	i32 247, ; 502
	i32 209, ; 503
	i32 346, ; 504
	i32 269, ; 505
	i32 260, ; 506
	i32 170, ; 507
	i32 16, ; 508
	i32 179, ; 509
	i32 144, ; 510
	i32 320, ; 511
	i32 197, ; 512
	i32 125, ; 513
	i32 118, ; 514
	i32 38, ; 515
	i32 115, ; 516
	i32 47, ; 517
	i32 142, ; 518
	i32 117, ; 519
	i32 34, ; 520
	i32 175, ; 521
	i32 307, ; 522
	i32 95, ; 523
	i32 53, ; 524
	i32 261, ; 525
	i32 129, ; 526
	i32 153, ; 527
	i32 179, ; 528
	i32 24, ; 529
	i32 161, ; 530
	i32 238, ; 531
	i32 345, ; 532
	i32 148, ; 533
	i32 104, ; 534
	i32 89, ; 535
	i32 226, ; 536
	i32 60, ; 537
	i32 142, ; 538
	i32 298, ; 539
	i32 303, ; 540
	i32 100, ; 541
	i32 5, ; 542
	i32 13, ; 543
	i32 122, ; 544
	i32 135, ; 545
	i32 28, ; 546
	i32 315, ; 547
	i32 193, ; 548
	i32 72, ; 549
	i32 236, ; 550
	i32 24, ; 551
	i32 224, ; 552
	i32 298, ; 553
	i32 265, ; 554
	i32 262, ; 555
	i32 332, ; 556
	i32 137, ; 557
	i32 217, ; 558
	i32 233, ; 559
	i32 168, ; 560
	i32 195, ; 561
	i32 266, ; 562
	i32 311, ; 563
	i32 101, ; 564
	i32 123, ; 565
	i32 237, ; 566
	i32 183, ; 567
	i32 163, ; 568
	i32 167, ; 569
	i32 240, ; 570
	i32 39, ; 571
	i32 198, ; 572
	i32 319, ; 573
	i32 17, ; 574
	i32 171, ; 575
	i32 332, ; 576
	i32 331, ; 577
	i32 137, ; 578
	i32 150, ; 579
	i32 229, ; 580
	i32 155, ; 581
	i32 177, ; 582
	i32 130, ; 583
	i32 19, ; 584
	i32 65, ; 585
	i32 178, ; 586
	i32 296, ; 587
	i32 205, ; 588
	i32 147, ; 589
	i32 173, ; 590
	i32 47, ; 591
	i32 339, ; 592
	i32 215, ; 593
	i32 79, ; 594
	i32 61, ; 595
	i32 106, ; 596
	i32 264, ; 597
	i32 219, ; 598
	i32 49, ; 599
	i32 250, ; 600
	i32 336, ; 601
	i32 261, ; 602
	i32 14, ; 603
	i32 182, ; 604
	i32 68, ; 605
	i32 171, ; 606
	i32 342, ; 607
	i32 225, ; 608
	i32 229, ; 609
	i32 341, ; 610
	i32 192, ; 611
	i32 78, ; 612
	i32 234, ; 613
	i32 108, ; 614
	i32 218, ; 615
	i32 260, ; 616
	i32 67, ; 617
	i32 63, ; 618
	i32 27, ; 619
	i32 160, ; 620
	i32 227, ; 621
	i32 10, ; 622
	i32 198, ; 623
	i32 11, ; 624
	i32 306, ; 625
	i32 210, ; 626
	i32 78, ; 627
	i32 126, ; 628
	i32 83, ; 629
	i32 184, ; 630
	i32 66, ; 631
	i32 297, ; 632
	i32 107, ; 633
	i32 65, ; 634
	i32 128, ; 635
	i32 122, ; 636
	i32 77, ; 637
	i32 275, ; 638
	i32 265, ; 639
	i32 340, ; 640
	i32 8, ; 641
	i32 233, ; 642
	i32 2, ; 643
	i32 44, ; 644
	i32 278, ; 645
	i32 156, ; 646
	i32 128, ; 647
	i32 263, ; 648
	i32 23, ; 649
	i32 133, ; 650
	i32 221, ; 651
	i32 252, ; 652
	i32 335, ; 653
	i32 317, ; 654
	i32 29, ; 655
	i32 220, ; 656
	i32 62, ; 657
	i32 200, ; 658
	i32 90, ; 659
	i32 302, ; 660
	i32 87, ; 661
	i32 148, ; 662
	i32 202, ; 663
	i32 36, ; 664
	i32 86, ; 665
	i32 241, ; 666
	i32 180, ; 667
	i32 330, ; 668
	i32 325, ; 669
	i32 183, ; 670
	i32 50, ; 671
	i32 6, ; 672
	i32 90, ; 673
	i32 337, ; 674
	i32 21, ; 675
	i32 162, ; 676
	i32 96, ; 677
	i32 50, ; 678
	i32 113, ; 679
	i32 257, ; 680
	i32 343, ; 681
	i32 130, ; 682
	i32 76, ; 683
	i32 27, ; 684
	i32 234, ; 685
	i32 301, ; 686
	i32 256, ; 687
	i32 7, ; 688
	i32 208, ; 689
	i32 199, ; 690
	i32 110, ; 691
	i32 257, ; 692
	i32 243 ; 693
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

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
