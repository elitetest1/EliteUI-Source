.class public final Landroid/telephony/satellite/SatelliteSessionStats;
.super Ljava/lang/Object;
.source "SatelliteSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist datagramStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCountOfSuccessfulUserMessages:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mCountOfUnsuccessfulUserMessages:I

.field private blacklist mCountOfUserMessagesInQueueToBeSent:I

.field private blacklist mLastMessageLatency:J

.field private blacklist mLatencyOfSuccessfulUserMessages:J

.field private blacklist mMaxLatency:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSessionStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUnsuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForConnection(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForAck(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUserMessagesInQueueToBeSent(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmLatencyOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    return-void
.end method

.method private blacklist getPrintableCounters(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "countOfSuccessfulUserMessages:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "countOfUnsuccessfulUserMessages:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "countOfTimedOutUserMessagesWaitingForConnection:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "countOfTimedOutUserMessagesWaitingForAck:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "countOfUserMessagesInQueueToBeSent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/satellite/SatelliteSessionStats;

    iget-object v4, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addCountOfUnsuccessfulUserMessages(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementUnsuccessfulUserMessageCount()V

    const/16 p1, 0x12

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementTimedOutUserMessagesWaitingForConnection()V

    return-void

    :cond_0
    const/16 p1, 0x18

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementTimedOutUserMessagesWaitingForAck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while addCountOfUnsuccessfulUserMessages: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SatelliteSessionStats"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public blacklist clear()V
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

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
    check-cast p1, Landroid/telephony/satellite/SatelliteSessionStats;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    iget v3, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    iget-wide v4, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    iget v3, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    iget v3, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    iget v3, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    iget p1, p1, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getCountOfSuccessfulOutgoingDatagram(I)I
    .locals 1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfSuccessfulUserMessages()I

    move-result p0

    return p0
.end method

.method public blacklist getCountOfSuccessfulUserMessages()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    return p0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForAck()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return p0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForAck(I)I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfTimedOutUserMessagesWaitingForAck()I

    move-result p0

    return p0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForConnection()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return p0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForConnection(I)I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfTimedOutUserMessagesWaitingForConnection()I

    move-result p0

    return p0
.end method

.method public blacklist getCountOfUnsuccessfulUserMessages()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    return p0
.end method

.method public blacklist getCountOfUnsuccessfulUserMessages(I)I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfUnsuccessfulUserMessages()I

    move-result p0

    return p0
.end method

.method public blacklist getCountOfUserMessagesInQueueToBeSent()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return p0
.end method

.method public blacklist getCountOfUserMessagesInQueueToBeSent(I)I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfUserMessagesInQueueToBeSent()I

    move-result p0

    return p0
.end method

.method public blacklist getLastMessageLatency()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    return-wide v0
.end method

.method public blacklist getLatencyOfAllSuccessfulUserMessages()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    return-wide v0
.end method

.method public blacklist getLatencyOfAllSuccessfulUserMessages(I)Ljava/lang/Long;
    .locals 1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->getLatencyOfAllSuccessfulUserMessages()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMaxLatency()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    return-wide v0
.end method

.method public blacklist getSatelliteSessionStats()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist incrementSuccessfulUserMessageCount()V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    return-void
.end method

.method public blacklist incrementTimedOutUserMessagesWaitingForAck()V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return-void
.end method

.method public blacklist incrementTimedOutUserMessagesWaitingForConnection()V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return-void
.end method

.method public blacklist incrementUnsuccessfulUserMessageCount()V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    return-void
.end method

.method public blacklist incrementUserMessagesInQueueToBeSent()V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return-void
.end method

.method public blacklist recordSuccessfulOutgoingDatagramStats(IJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementSuccessfulUserMessageCount()V

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    cmp-long p1, v0, p2

    if-gez p1, :cond_0

    iput-wide p2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    :cond_0
    iput-wide p2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {p0, p2, p3}, Landroid/telephony/satellite/SatelliteSessionStats;->updateLatencyOfAllSuccessfulUserMessages(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while recordSuccessfulOutgoingDatagramStats: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SatelliteSessionStats"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resetCountOfUserMessagesInQueueToBeSent()V
    .locals 2

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setSatelliteSessionStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    const-string v2, "\n"

    if-eqz v1, :cond_1

    const-string v1, " ====== SatelliteSessionStatsWrapper Info ============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Key:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", SatelliteSessionStats:["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getPrintableCounters(Ljava/lang/StringBuilder;)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LatencyOfSuccessfulUserMessages:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mMaxLatency:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLastMessageLatency:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " ============== ================== ==============="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getPrintableCounters(Ljava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateCountOfUserMessagesInQueueToBeSent(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementUserMessagesInQueueToBeSent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while addCountOfUserMessagesInQueueToBeSent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SatelliteSessionStats"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateLatencyOfAllSuccessfulUserMessages(J)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
