.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist appinfo:Z = false

.field private static blacklist hpkePublicApi:Z = false

.field private static blacklist hpkeVApis:Z = false

.field private static volatile blacklist isCached:Z = false

.field private static blacklist madviseApi:Z = false

.field private static blacklist nativeMetrics:Z = false

.field private static blacklist openjdk21Stringconcat:Z = false

.field private static blacklist openjdk21V1Apis:Z = false

.field private static blacklist openjdk21V2Apis:Z = false

.field private static blacklist postCleanupApis:Z = false

.field private static blacklist readOnlyDynamicCodeLoad:Z = false

.field private static blacklist vApis:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .locals 4

    const-string p0, "FeatureFlagsImplExport"

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.android.libcore"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    const-string v2, "hpke_public_api"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    const-string v2, "madvise_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    const-string v2, "native_metrics"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    const-string v2, "openjdk21_stringconcat"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    const-string v2, "openjdk_21_v1_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    const-string v2, "openjdk_21_v2_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    const-string v2, "post_cleanup_apis"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    const-string/jumbo v2, "read_only_dynamic_code_load"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    const-string v2, "appinfo"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/LinkageError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    return-void
.end method


# virtual methods
.method public blacklist appinfo()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    return p0
.end method

.method public blacklist hpkePublicApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    return p0
.end method

.method public blacklist hpkeVApis()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    return p0
.end method

.method public blacklist madviseApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    return p0
.end method

.method public blacklist nativeMetrics()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    return p0
.end method

.method public blacklist openjdk21Stringconcat()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    return p0
.end method

.method public blacklist openjdk21V1Apis()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    return p0
.end method

.method public blacklist openjdk21V2Apis()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    return p0
.end method

.method public blacklist postCleanupApis()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    return p0
.end method

.method public blacklist readOnlyDynamicCodeLoad()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    return p0
.end method

.method public blacklist vApis()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    return p0
.end method
