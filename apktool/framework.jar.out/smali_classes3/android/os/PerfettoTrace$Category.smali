.class public final Landroid/os/PerfettoTrace$Category;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private blacklist mIsRegistered:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J

.field private final blacklist mSeverity:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrace$Category;->native_delete()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PerfettoTrace$Category;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/PerfettoTrace$Category;->mTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/PerfettoTrace$Category;->mSeverity:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/os/PerfettoTrace$Category;->native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {p1, p2}, Landroid/os/PerfettoTrace$Category;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {p3, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_delete$ravenwood()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist native_get_extra_ptr$ravenwood(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static native blacklist native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist native_init$ravenwood(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static native blacklist native_is_enabled(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_unregister(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist isEnabled()Z
    .locals 2

    invoke-static {}, Landroid/os/PerfettoTrace;->-$$Nest$sfgetIS_FLAG_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_is_enabled(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEnabled$ravenwood()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRegistered()Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    return p0
.end method

.method public blacklist register()Landroid/os/PerfettoTrace$Category;
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_register(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    return-object p0
.end method

.method public blacklist unregister()Landroid/os/PerfettoTrace$Category;
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_unregister(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    return-object p0
.end method
