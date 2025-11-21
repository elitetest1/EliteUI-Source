.class public final Landroid/telephony/data/EpsBearerQosSessionAttributes;
.super Ljava/lang/Object;
.source "EpsBearerQosSessionAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/net/QosSessionAttributes;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/EpsBearerQosSessionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "EpsBearerQosSessionAttributes"


# instance fields
.field private final blacklist mGuaranteedDownlinkBitRate:J

.field private final blacklist mGuaranteedUplinkBitRate:J

.field private final blacklist mMaxDownlinkBitRate:J

.field private final blacklist mMaxUplinkBitRate:J

.field private final blacklist mQci:I

.field private final blacklist mRemoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/EpsBearerQosSessionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/data/EpsBearerQosSessionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJJJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "remoteAddress must be non-null"

    invoke-static {p10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    iput-wide p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    iput-wide p4, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    iput-wide p6, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iput-wide p8, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-static {p10}, Landroid/telephony/data/EpsBearerQosSessionAttributes;->copySocketAddresses(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    :try_start_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Landroid/telephony/data/EpsBearerQosSessionAttributes;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unable to unparcel remote address at index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/EpsBearerQosSessionAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/EpsBearerQosSessionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist copySocketAddresses(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    iget v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    iget v3, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    iget-object p1, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getGuaranteedDownlinkBitRateKbps()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getGuaranteedUplinkBitRateKbps()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxDownlinkBitRateKbps()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxUplinkBitRateKbps()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getQosIdentifier()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    return p0
.end method

.method public whitelist getRemoteAddresses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
