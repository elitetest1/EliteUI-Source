.class public Landroid/app/CameraCompatTaskInfo;
.super Ljava/lang/Object;
.source "CameraCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CameraCompatTaskInfo$FreeformCameraCompatMode;
    }
.end annotation


# static fields
.field public static final blacklist CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_LANDSCAPE:I = 0x3

.field public static final blacklist CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_PORTRAIT:I = 0x5

.field public static final blacklist CAMERA_COMPAT_FREEFORM_NONE:I = 0x1

.field public static final blacklist CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_LANDSCAPE:I = 0x2

.field public static final blacklist CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_PORTRAIT:I = 0x4

.field public static final blacklist CAMERA_COMPAT_FREEFORM_UNSPECIFIED:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/CameraCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist freeformCameraCompatMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/CameraCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/CameraCompatTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/CameraCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/CameraCompatTaskInfo;
    .locals 1

    new-instance v0, Landroid/app/CameraCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method public static blacklist freeformCameraCompatModeToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "app-landscape-device-portrait"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected camera compat mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "app-portrait-device-portrait"

    return-object p0

    :cond_2
    const-string p0, "app-landscape-device-landscape"

    return-object p0

    :cond_3
    const-string p0, "app-portrait-device-landscape"

    return-object p0

    :cond_4
    const-string p0, "inactive"

    return-object p0

    :cond_5
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist getDisplayRotationFromCameraCompatMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget p1, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget p1, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraCompatTaskInfo { freeformCameraCompatMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-static {p0}, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
