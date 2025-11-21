.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static blacklist RC_COLOR:I = 0x3e


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createColor(IIII)I
    .locals 0

    shl-int/lit8 p3, p3, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public blacklist getDefaultColor(J)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result p0

    const/16 v0, 0x20

    if-eqz p0, :cond_0

    :goto_0
    shr-long p0, p1, v0

    long-to-int p0, p0

    return p0

    :cond_0
    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method blacklist getID(J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, -0x100

    and-long p0, p1, v0

    const/16 p2, 0x8

    shr-long/2addr p0, p2

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method blacklist isRCColor(J)Z
    .locals 2

    const-wide/16 v0, 0x3f

    and-long p0, p1, v0

    const-wide/16 v0, 0x3e

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist packRCColor(II)J
    .locals 2

    int-to-long p0, p1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    shl-int/lit8 p2, p2, 0x8

    int-to-long v0, p2

    or-long/2addr p0, v0

    sget p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->RC_COLOR:I

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method
