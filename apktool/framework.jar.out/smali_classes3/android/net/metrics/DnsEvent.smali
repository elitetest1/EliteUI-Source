.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"


# static fields
.field private static final greylist-max-o SIZE_LIMIT:I = 0x4e20


# instance fields
.field public greylist-max-o eventCount:I

.field public greylist-max-o eventTypes:[B

.field public greylist-max-o latenciesMs:[I

.field public final greylist-max-o netId:I

.field public greylist-max-o returnCodes:[B

.field public greylist-max-o successCount:I

.field public final greylist-max-o transports:J


# direct methods
.method public constructor greylist-max-o <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    new-array p1, p4, [B

    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    new-array p1, p4, [B

    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    new-array p1, p4, [I

    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method


# virtual methods
.method greylist-max-o addResult(BBI)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v3, 0x4e20

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_3

    const-wide v3, 0x3ff6666666666666L    # 1.4

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v3, v5

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/net/metrics/DnsEvent;->resize(I)V

    :cond_3
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v2, v3

    iget-object p1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    aput-byte p2, p1, v3

    iget-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    aput p3, p1, v3

    add-int/2addr v3, v0

    iput v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-eqz v1, :cond_4

    iget p1, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    :cond_4
    :goto_1
    return v1
.end method

.method public greylist-max-o resize(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent(netId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d events, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d success)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
