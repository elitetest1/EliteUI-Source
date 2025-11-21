.class public final Landroid/hardware/radio/V1_4/RadioFrequencyInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "RadioFrequencyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/RadioFrequencyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist channelNumber:B = 0x1t

.field public static final blacklist range:B


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "channelNumber"

    return-object p0

    :cond_1
    const-string p0, "range"

    return-object p0
.end method
