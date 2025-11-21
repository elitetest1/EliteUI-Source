.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z = false

.field private static blacklist rangingCsEnabled:Z = false

.field private static blacklist rangingRttEnabled:Z = false

.field private static blacklist rangingStackEnabled:Z = false

.field private static blacklist rangingStackUpdates25q4:Z = false


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
    const-string v1, "com.android.ranging.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    const-string/jumbo v2, "ranging_rtt_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    const-string/jumbo v2, "ranging_stack_updates_25q4"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackUpdates25q4:Z
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
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    return-void
.end method


# virtual methods
.method public blacklist rangingCsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    return p0
.end method

.method public blacklist rangingRttEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    return p0
.end method

.method public blacklist rangingStackEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    return p0
.end method

.method public blacklist rangingStackUpdates25q4()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackUpdates25q4:Z

    return p0
.end method
