.class public final Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist eutranBand:B = 0x2t

.field public static final blacklist geranBand:B = 0x0t

.field public static final blacklist ngranBand:B = 0x3t

.field public static final blacklist utranBand:B = 0x1t


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "ngranBand"

    return-object p0

    :cond_1
    const-string p0, "eutranBand"

    return-object p0

    :cond_2
    const-string p0, "utranBand"

    return-object p0

    :cond_3
    const-string p0, "geranBand"

    return-object p0
.end method
