.class public Landroid/net/wifi/WifiBlobStore;
.super Lcom/android/internal/net/ConnectivityBlobStore;
.source "WifiBlobStore.java"


# static fields
.field private static final blacklist DB_NAME:Ljava/lang/String; = "WifiBlobStore.db"

.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiBlobStore"

.field private static blacklist sInstance:Landroid/net/wifi/WifiBlobStore;

.field private static final blacklist sIsVendorApiLevelGreaterThanT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->isVendorApiLevelGreaterThanT()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    const-string v0, "WifiBlobStore.db"

    invoke-direct {p0, v0}, Lcom/android/internal/net/ConnectivityBlobStore;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getInstance()Landroid/net/wifi/WifiBlobStore;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiBlobStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiBlobStore;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    :cond_0
    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    return-object v0
.end method

.method public static blacklist getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;
    .locals 1

    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isVendorApiLevelGreaterThanT()Z
    .locals 7

    const-string/jumbo v0, "ro.board.first_api_level"

    const-string/jumbo v1, "ro.vndk.version"

    const-string/jumbo v2, "ro.board.api_level"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "WifiBlobStore"

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v2, v5, :cond_2

    aget-object v5, v0, v2

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved API level property, value="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x21

    if-le v5, v0, :cond_0

    return v4

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "No API level properties are defined"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static blacklist supplicantCanAccessBlobstore()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return v0
.end method
