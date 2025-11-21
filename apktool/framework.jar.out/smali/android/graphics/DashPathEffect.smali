.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor whitelist <init>([FF)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/DashPathEffect;->native_instance:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native greylist-max-o nativeCreate([FF)J
.end method
