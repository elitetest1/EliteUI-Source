.class public final Landroid/hardware/contexthub/HubServiceInfo;
.super Ljava/lang/Object;
.source "HubServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubServiceInfo$Builder;,
        Landroid/hardware/contexthub/HubServiceInfo$ServiceFormat;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_AIDL:I = 0x1

.field public static final whitelist FORMAT_CUSTOM:I = 0x0

.field public static final whitelist FORMAT_PW_RPC_PROTOBUF:I = 0x2


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/HubServiceInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubServiceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/Service;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/hardware/contexthub/Service;->serviceDescriptor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    iget v0, p1, Landroid/hardware/contexthub/Service;->format:I

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    iget v0, p1, Landroid/hardware/contexthub/Service;->majorVersion:I

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    iget p1, p1, Landroid/hardware/contexthub/Service;->minorVersion:I

    iput p1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubServiceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    iput p3, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    iput p4, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getFormat()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    return p0
.end method

.method public whitelist getMajorVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    return p0
.end method

.method public whitelist getMinorVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    return p0
.end method

.method public whitelist getServiceDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: descriptor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/hardware/contexthub/HubServiceInfo;->mServiceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/contexthub/HubServiceInfo;->mFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMajorVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo;->mMinorVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
