.class public final Landroid/net/sntp/Duration64;
.super Ljava/lang/Object;
.source "Duration64.java"


# static fields
.field public static final blacklist ZERO:Landroid/net/sntp/Duration64;


# instance fields
.field private final blacklist mBits:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/sntp/Duration64;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/sntp/Duration64;-><init>(J)V

    sput-object v0, Landroid/net/sntp/Duration64;->ZERO:Landroid/net/sntp/Duration64;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/sntp/Duration64;->mBits:J

    return-void
.end method

.method public static blacklist between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;
    .locals 7

    invoke-virtual {p0}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result p0

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    invoke-virtual {p1}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v3

    shl-long v2, v3, v2

    invoke-virtual {p1}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v5

    or-long/2addr p0, v2

    sub-long/2addr p0, v0

    new-instance v0, Landroid/net/sntp/Duration64;

    invoke-direct {v0, p0, p1}, Landroid/net/sntp/Duration64;-><init>(J)V

    return-object v0
.end method

.method public static blacklist fromDuration(Ljava/time/Duration;)Landroid/net/sntp/Duration64;
    .locals 6

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v2, v3}, Landroid/net/sntp/Timestamp64;->nanosToFractionBits(J)I

    move-result p0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance p0, Landroid/net/sntp/Duration64;

    invoke-direct {p0, v0, v1}, Landroid/net/sntp/Duration64;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Landroid/net/sntp/Duration64;

    iget-wide v2, p0, Landroid/net/sntp/Duration64;->mBits:J

    iget-wide p0, p1, Landroid/net/sntp/Duration64;->mBits:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getNanos()I
    .locals 4

    iget-wide v0, p0, Landroid/net/sntp/Duration64;->mBits:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p0}, Landroid/net/sntp/Timestamp64;->fractionBitsToNanos(I)I

    move-result p0

    return p0
.end method

.method public blacklist getSeconds()I
    .locals 2

    iget-wide v0, p0, Landroid/net/sntp/Duration64;->mBits:J

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Landroid/net/sntp/Duration64;->mBits:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;
    .locals 0

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDuration()Ljava/time/Duration;
    .locals 4

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->getSeconds()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->getNanos()I

    move-result p0

    int-to-long v0, v0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/net/sntp/Duration64;->mBits:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ns)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
