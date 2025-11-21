.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o afTriggerId:I

.field private blacklist errorPhysicalCameraId:Ljava/lang/String;

.field private greylist-max-o errorStreamId:I

.field private greylist-max-o frameNumber:J

.field private blacklist hasReadoutTimestamp:Z

.field private blacklist lastCompletedRegularFrameNumber:J

.field private blacklist lastCompletedReprocessFrameNumber:J

.field private blacklist lastCompletedZslFrameNumber:J

.field private greylist-max-o partialResultCount:I

.field private greylist-max-o precaptureTriggerId:I

.field private blacklist readoutTimestamp:J

.field private greylist-max-o requestId:I

.field private greylist-max-o subsequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    iput p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    iput p3, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    iput p4, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    iput-wide p5, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    iput p7, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    iput p8, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    iput-object p9, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    iput-wide p10, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    iput-wide p12, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    iput-wide p14, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getAfTriggerId()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return p0
.end method

.method public blacklist getErrorPhysicalCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getErrorStreamId()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return p0
.end method

.method public greylist-max-o getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedRegularFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedReprocessFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedZslFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getPartialResultCount()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return p0
.end method

.method public greylist-max-o getPrecaptureTriggerId()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return p0
.end method

.method public blacklist getReadoutTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return p0
.end method

.method public greylist-max-o getSubsequenceId()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return p0
.end method

.method public blacklist hasReadoutTimestamp()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    return p0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz p2, :cond_1

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    return-void
.end method
