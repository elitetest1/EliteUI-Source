.class public Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextDeviceActivityDetectorAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextDeviceActivityDetectorAttribute"


# instance fields
.field private blacklist mActivity:I

.field private blacklist mDuration:I

.field private blacklist mNeedsRequestToUpdate:Z

.field private blacklist mPosture:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemContextDeviceActivityDetectorAttribute activity, posture : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemContextDeviceActivityDetectorAttribute"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/4 v2, 0x0

    const-string v3, "duration"

    const-string/jumbo v4, "trigger_type"

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-nez v6, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    if-ne v1, v5, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-ne v7, v6, :cond_1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ne v1, v6, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-ne v1, v6, :cond_2

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v1, "posture"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x36

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string p0, "SemContextDeviceActivityDetectorAttribute"

    const-string v0, "The attribute is wrong."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 6

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/4 v1, 0x0

    const-string v2, "SemContextDeviceActivityDetectorAttribute"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_5

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-eqz v5, :cond_2

    :cond_1
    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "This option is NOT supported, activity : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", request : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SemContextDeviceActivityDetector checkAttribute : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    if-ltz p0, :cond_4

    return v3

    :cond_4
    return v1

    :cond_5
    :goto_0
    const-string p0, "SemContextDeviceActivityDetector activity is wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
