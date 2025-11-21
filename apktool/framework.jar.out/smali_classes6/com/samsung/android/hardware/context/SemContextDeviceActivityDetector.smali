.class public Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextDeviceActivityDetector.java"


# static fields
.field public static final blacklist ACTIVITY_MOVING:I = 0x2

.field public static final blacklist ACTIVITY_STATIONARY:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DETECTED:I = 0x1

.field public static final blacklist ERROR_SENSOR_OUT:I = 0x3

.field public static final blacklist NOT_DETECTED:I = 0x2

.field public static final blacklist POSTURE_FACE_DOWN:I = 0x800

.field public static final blacklist POSTURE_FACE_UP:I = 0x400

.field public static final blacklist POSTURE_LANDSCAPE:I = 0x100

.field public static final blacklist POSTURE_PORTRAIT:I = 0x200


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getActivity()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "property"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getDuration()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getReserved()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "reserved"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getResult()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
