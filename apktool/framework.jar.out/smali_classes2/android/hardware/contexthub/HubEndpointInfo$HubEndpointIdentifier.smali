.class public Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
.super Ljava/lang/Object;
.source "HubEndpointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HubEndpointIdentifier"
.end annotation


# instance fields
.field private final blacklist mEndpointId:J

.field private final blacklist mHubId:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    iput-wide p1, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/EndpointId;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/hardware/contexthub/EndpointId;->id:J

    iput-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    iget-wide v0, p1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iput-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    return-void
.end method

.method public static blacklist invalid()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .locals 3

    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v2, p1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    iget-wide v4, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    iget-wide p0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getEndpoint()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    return-wide v0
.end method

.method public whitelist getHub()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-wide v0, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mEndpointId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->mHubId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
