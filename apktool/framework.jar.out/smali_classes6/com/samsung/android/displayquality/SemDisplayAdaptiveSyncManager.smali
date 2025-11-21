.class public final Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;
.super Ljava/lang/Object;
.source "SemDisplayAdaptiveSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager$Result;
    }
.end annotation


# static fields
.field public static final blacklist RESULT_ERROR:I = 0x1

.field public static final blacklist RESULT_NO_SUPPORT:I = 0x2

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemDisplayAdaptiveSyncManager"

.field private static final blacklist mEnabled:Z

.field private static final blacklist mSupportAdaptiveSync:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mEnabled:Z

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mSupportAdaptiveSync:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setAdaptiveSyncEnabled(Z)I
    .locals 3

    const-string v0, "DisplayQuality"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mEnabled:Z

    const-string v2, "SemDisplayAdaptiveSyncManager"

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayAdaptiveSyncManager;->mSupportAdaptiveSync:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string p0, "SemDisplayAdaptiveSyncManagerService is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager;->setAdaptiveSync(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "setAdaptiveSync"

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2
    :goto_0
    const-string p0, "SemDisplayAdaptiveSyncManager is not supported"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
