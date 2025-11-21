.class final Landroid/os/PerfettoTrackEventExtra$ArgDouble;
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
    name = "ArgDouble"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_delete()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_get_extra_ptr(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    sget-object p1, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

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

.method private static native blacklist native_init(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPtr()J
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .locals 2

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_set_value(JD)V

    return-void
.end method
