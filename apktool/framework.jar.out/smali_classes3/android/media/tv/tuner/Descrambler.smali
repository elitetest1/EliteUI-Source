.class public Landroid/media/tv/tuner/Descrambler;
.super Ljava/lang/Object;
.source "Descrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Descrambler$PidType;
    }
.end annotation


# static fields
.field public static final whitelist PID_TYPE_MMTP:I = 0x2

.field public static final whitelist PID_TYPE_T:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Descrambler"


# instance fields
.field private blacklist mIsClosed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static whitelist isValidKeyToken([B)Z
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid key token size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bit."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Descrambler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private native blacklist nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeSetKeyToken([B)I
.end method


# virtual methods
.method public whitelist addPid(IILandroid/media/tv/tuner/filter/Filter;)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Descrambler;->nativeClose()I

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Failed to close descrambler"

    invoke-static {v1, p0}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist removePid(IILandroid/media/tv/tuner/filter/Filter;)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setKeyToken([B)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    const-string v1, "key token must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/tv/tuner/Descrambler;->isValidKeyToken([B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x4

    monitor-exit v0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Descrambler;->nativeSetKeyToken([B)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
