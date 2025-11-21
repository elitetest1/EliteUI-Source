.class public final Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z = false

.field private static blacklist xrManifestEntries:Z = false


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
    const-string v0, "android.xr"

    invoke-static {v0}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v0

    const-string/jumbo v1, "xr_manifest_entries"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->xrManifestEntries:Z
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

    sput-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->isCached:Z

    return-void
.end method


# virtual methods
.method public blacklist xrManifestEntries()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;->xrManifestEntries:Z

    return p0
.end method
