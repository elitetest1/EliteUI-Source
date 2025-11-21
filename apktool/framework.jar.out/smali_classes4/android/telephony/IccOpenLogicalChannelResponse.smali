.class public Landroid/telephony/IccOpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "IccOpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/IccOpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_CHANNEL:I = -0x1

.field public static final whitelist STATUS_MISSING_RESOURCE:I = 0x2

.field public static final whitelist STATUS_NO_ERROR:I = 0x1

.field public static final whitelist STATUS_NO_SUCH_ELEMENT:I = 0x3

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final greylist-max-o mChannel:I

.field private final greylist-max-o mSelectResponse:[B

.field private final greylist-max-o mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse$1;

    invoke-direct {v0}, Landroid/telephony/IccOpenLogicalChannelResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    iput p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    iput-object p3, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getChannel()I
    .locals 0

    iget p0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    return p0
.end method

.method public whitelist getSelectResponse()[B
    .locals 0

    iget-object p0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-object p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
