.class final Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "CellBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final blacklist mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final blacklist mReceivedTime:J

.field private final blacklist mSlotIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$moverTime(Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;)Z
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->overTime()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iput-wide p2, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    iput p4, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mSlotIndex:I

    return-void
.end method

.method private blacklist overTime()Z
    .locals 6

    iget-wide v0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    iget-object v0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    iget-object v2, p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    iget-wide v4, p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget p0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mSlotIndex:I

    iget p1, p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mSlotIndex:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
