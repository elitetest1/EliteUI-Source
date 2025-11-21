.class final Landroid/os/PerfettoTrackEventExtra$Flow;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Flow"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$Flow;->native_delete()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$Flow;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$Flow;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$Flow;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Flow;->native_get_extra_ptr(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/PerfettoTrackEventExtra$Flow;->mExtraPtr:J

    sget-object v2, Landroid/os/PerfettoTrackEventExtra$Flow;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_set_process_flow(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_set_process_terminating_flow(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$Flow;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setProcessFlow(J)V
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$Flow;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->native_set_process_flow(JJ)V

    return-void
.end method

.method public blacklist setProcessTerminatingFlow(J)V
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$Flow;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->native_set_process_terminating_flow(JJ)V

    return-void
.end method
