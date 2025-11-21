.class public Lcom/android/internal/view/SurfaceCallbackHelper;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"


# static fields
.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66


# instance fields
.field blacklist mFinishDrawingCollected:I

.field blacklist mFinishDrawingExpected:I

.field private blacklist mFinishDrawingRunnable:Ljava/lang/Runnable;

.field blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mSurfaceRedrawImplemented:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceRedrawImplemented(Lcom/android/internal/view/SurfaceCallbackHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    new-instance v1, Lcom/android/internal/view/SurfaceCallbackHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/SurfaceCallbackHelper$1;-><init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V

    iput-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    return-void
.end method


# virtual methods
.method public blacklist dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    .locals 4

    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    instance-of v3, v2, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/SurfaceHolder$Callback2;

    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, p1, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mSurfaceRedrawImplemented:Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
