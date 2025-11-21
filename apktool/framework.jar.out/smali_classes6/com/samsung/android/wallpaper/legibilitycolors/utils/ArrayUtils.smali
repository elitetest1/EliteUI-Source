.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist arrayChangePos([Ljava/lang/Object;II)V
    .locals 3

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    if-le p1, p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    :goto_0
    if-le p1, p2, :cond_1

    add-int/lit8 v0, p1, -0x1

    aget-object v1, p0, v0

    aget-object v2, p0, p1

    aput-object v2, p0, v0

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ge p1, p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-object v1, p0, v0

    aget-object v2, p0, p1

    aput-object v2, p0, v0

    aput-object v1, p0, p1

    move p1, v0

    goto :goto_1

    :cond_1
    return-void
.end method
