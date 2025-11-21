.class public final Landroid/hardware/location/NanoAppRpcService;
.super Ljava/lang/Object;
.source "NanoAppRpcService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mServiceId:J

.field private blacklist mServiceVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoAppRpcService$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppRpcService$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppRpcService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    iput p3, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppRpcService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppRpcService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getMajorVersion()I
    .locals 1

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method private blacklist getMinorVersion()I
    .locals 1

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private blacklist getPatchVersion()I
    .locals 1

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/location/NanoAppRpcService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/location/NanoAppRpcService;

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppRpcService;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppRpcService;->getVersion()I

    move-result p1

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    return-wide v0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppRpcService;->getId()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NanoAppRpcService[Id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version = v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getMinorVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getPatchVersion()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
