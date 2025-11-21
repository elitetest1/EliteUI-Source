.class public Lcom/samsung/android/media/SemQuramDngTimeZone;
.super Ljava/lang/Object;
.source "SemQuramDngTimeZone.java"


# static fields
.field public static final blacklist eInvalidOffset:I = -0x385

.field public static final blacklist eMaxOffsetHours:I = 0xf

.field public static final blacklist eMaxOffsetMinutes:I = 0x384

.field public static final blacklist eMinOffsetHours:I = -0xf

.field public static final blacklist eMinOffsetMinutes:I = -0x384


# instance fields
.field public blacklist mOffsetMinutes:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHour()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngTimeZone;->mOffsetMinutes:I

    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public blacklist getMinute()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngTimeZone;->mOffsetMinutes:I

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngTimeZone;->mOffsetMinutes:I

    const/16 v0, -0x385

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
