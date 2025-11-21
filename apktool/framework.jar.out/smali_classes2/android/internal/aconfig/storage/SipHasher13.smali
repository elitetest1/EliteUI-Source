.class public Landroid/internal/aconfig/storage/SipHasher13;
.super Ljava/lang/Object;
.source "SipHasher13.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/SipHasher13$State;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hash([B)J
    .locals 11

    new-instance v0, Landroid/internal/aconfig/storage/SipHasher13$State;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/internal/aconfig/storage/SipHasher13$State;-><init>(JJ)V

    array-length v3, p0

    and-int/lit8 v4, v3, 0x7

    const/4 v5, 0x0

    :goto_0
    sub-int v6, v3, v4

    if-ge v5, v6, :cond_0

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Landroid/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v6, v4, 0x8

    const-wide/16 v7, 0xff

    shl-long v9, v7, v6

    invoke-static {p0, v5, v4}, Landroid/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v5

    or-long/2addr v5, v9

    const/4 p0, 0x7

    if-ne v4, p0, :cond_1

    invoke-virtual {v0, v5, v6}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    goto :goto_1

    :cond_1
    move-wide v1, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    and-long/2addr v3, v7

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    invoke-virtual {v0}, Landroid/internal/aconfig/storage/SipHasher13$State;->finish()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist loadLe([BII)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, v2, p1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
