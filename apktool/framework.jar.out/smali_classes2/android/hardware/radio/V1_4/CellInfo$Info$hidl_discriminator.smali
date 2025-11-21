.class public final Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/CellInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist cdma:B = 0x1t

.field public static final blacklist gsm:B = 0x0t

.field public static final blacklist lte:B = 0x4t

.field public static final blacklist nr:B = 0x5t

.field public static final blacklist tdscdma:B = 0x3t

.field public static final blacklist wcdma:B = 0x2t


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "nr"

    return-object p0

    :cond_1
    const-string p0, "lte"

    return-object p0

    :cond_2
    const-string p0, "tdscdma"

    return-object p0

    :cond_3
    const-string p0, "wcdma"

    return-object p0

    :cond_4
    const-string p0, "cdma"

    return-object p0

    :cond_5
    const-string p0, "gsm"

    return-object p0
.end method
