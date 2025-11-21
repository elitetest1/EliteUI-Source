.class public Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
.super Ljava/lang/Object;
.source "PhysicalCaptureResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o cameraId:Ljava/lang/String;

.field private blacklist cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    invoke-static {p2}, Landroid/hardware/camera2/CameraMetadataInfo;->metadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCameraMetadataInfo()Landroid/hardware/camera2/CameraMetadataInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    return-object p0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CameraMetadataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraMetadataInfo;

    iput-object p1, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraMetadataInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
