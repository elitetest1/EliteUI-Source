.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextEnvironmentAdaptiveDisplayAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextEnvironmentAdaptiveDisplayAttribute"


# instance fields
.field private blacklist mColorThreshold:F

.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const p1, 0x3d8f5c29    # 0.07f

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/16 p1, 0x23

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const-string v2, "color_threshold"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAttribute() mColorThreshold : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContextEnvironmentAdaptiveDisplayAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAttribute() mDuration : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2c

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "SemContextEnvironmentAdaptiveDisplayAttribute"

    if-gez v0, :cond_0

    const-string p0, "The color threshold value is wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    if-ltz p0, :cond_2

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "The duration value is wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
