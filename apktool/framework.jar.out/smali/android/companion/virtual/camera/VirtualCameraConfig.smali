.class public final Landroid/companion/virtual/camera/VirtualCameraConfig;
.super Ljava/lang/Object;
.source "VirtualCameraConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$SensorOrientation;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LENS_FACING_UNKNOWN:I = -0x1

.field public static final whitelist SENSOR_ORIENTATION_0:I = 0x0

.field public static final whitelist SENSOR_ORIENTATION_180:I = 0xb4

.field public static final whitelist SENSOR_ORIENTATION_270:I = 0x10e

.field public static final whitelist SENSOR_ORIENTATION_90:I = 0x5a


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

.field private final blacklist mLensFacing:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mSensorOrientation:I

.field private final blacklist mStreamConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisFormatSupported(I)Z
    .locals 0

    invoke-static {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->isFormatSupported(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    const-class v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/companion/virtual/camera/VirtualCameraCallback;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    const/4 p1, -0x1

    if-eq p6, p1, :cond_1

    iput p6, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    const-string p1, "Missing stream configurations"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    const-string p2, "Missing callback"

    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/camera/VirtualCameraCallback;

    const-string p4, "Missing callback executor"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    iput p5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one stream configuration is needed to create a virtual camera."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lens facing must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IILandroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;II)V

    return-void
.end method

.method private static blacklist isFormatSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    return-object p0
.end method

.method public whitelist getLensFacing()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSensorOrientation()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    return p0
.end method

.method public whitelist getStreamConfigs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
