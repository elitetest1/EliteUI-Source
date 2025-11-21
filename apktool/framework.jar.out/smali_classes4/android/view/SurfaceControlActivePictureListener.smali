.class public abstract Landroid/view/SurfaceControlActivePictureListener;
.super Ljava/lang/Object;
.source "SurfaceControlActivePictureListener.java"


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mDestructor:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/view/SurfaceControlActivePictureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControlActivePictureListener;->nativeGetDestructor()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlActivePictureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeGetDestructor()J
.end method

.method private native blacklist nativeMakeAndStartListening()J
.end method


# virtual methods
.method public abstract blacklist onActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
.end method

.method public blacklist startListening()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/view/SurfaceControlActivePictureListener;->nativeMakeAndStartListening()J

    move-result-wide v0

    sget-object v2, Landroid/view/SurfaceControlActivePictureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlActivePictureListener;->mDestructor:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist stopListening()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControlActivePictureListener;->mDestructor:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
