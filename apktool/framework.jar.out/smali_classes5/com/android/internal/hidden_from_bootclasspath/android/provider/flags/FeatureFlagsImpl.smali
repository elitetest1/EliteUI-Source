.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist deviceConfigWritableNamespacesApi:Z = false

.field private static blacklist dumpImprovements:Z = false

.field private static volatile blacklist isCached:Z = false

.field private static blacklist mmdDeviceConfig:Z = false

.field private static blacklist newStoragePublicApi:Z = false

.field private static blacklist newStorageWriterSystemApi:Z = false

.field private static blacklist stageFlagsForBuild:Z = false


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
    .locals 3

    const-string p0, "FeatureFlagsImplExport"

    :try_start_0
    const-string v0, "android.provider.flags"

    invoke-static {v0}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v0

    const-string v1, "dump_improvements"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    const-string v1, "mmd_device_config"

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    const-string v1, "new_storage_public_api"

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    const-string v1, "new_storage_writer_system_api"

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    const-string/jumbo v1, "stage_flags_for_build"

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    const-string v1, "device_config_writable_namespaces_api"

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/LinkageError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    return-void
.end method


# virtual methods
.method public blacklist deviceConfigWritableNamespacesApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z

    return p0
.end method

.method public blacklist dumpImprovements()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    return p0
.end method

.method public blacklist mmdDeviceConfig()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    return p0
.end method

.method public blacklist newStoragePublicApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    return p0
.end method

.method public blacklist newStorageWriterSystemApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    return p0
.end method

.method public blacklist stageFlagsForBuild()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    return p0
.end method
