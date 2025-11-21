.class public Landroid/filterfw/core/FilterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FilterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static greylist-max-o STATE_ALLOCATED:I = 0x0

.field private static greylist-max-o STATE_CREATED:I = 0x1

.field private static greylist-max-o STATE_INITIALIZED:I = 0x2


# instance fields
.field private greylist-max-o mFormat:I

.field private greylist-max-o mGLEnv:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mHeight:I

.field private greylist-max-o mListener:Landroid/view/SurfaceHolder$Callback;

.field private greylist-max-o mState:I

.field private greylist-max-o mSurfaceId:I

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private greylist-max-o registerSurface()V
    .locals 3

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not register Surface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in FilterSurfaceView!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o unregisterSurface()V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    if-lez p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V
    .locals 3

    const-string v0, "Attempting to bind filter "

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to SurfaceView with another open filter "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " attached already!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_2

    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    :cond_2
    iput-object p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    iget p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget p2, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    if-lt p1, p2, :cond_3

    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    iget p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget p2, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    iget v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Attempting to bind null filter to SurfaceView!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getGLEnv()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSurfaceId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    iput p3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    iput p4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->unregisterSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized greylist-max-o unbind()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
