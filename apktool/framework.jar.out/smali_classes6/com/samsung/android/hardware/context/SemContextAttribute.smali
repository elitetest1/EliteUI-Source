.class public Lcom/samsung/android/hardware/context/SemContextAttribute;
.super Ljava/lang/Object;
.source "SemContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttribute:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/16 v0, 0xc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x18

    if-eq p0, v0, :cond_d

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_c

    const/16 v0, 0x21

    if-eq p0, v0, :cond_b

    const/16 v0, 0x27

    if-eq p0, v0, :cond_a

    const/16 v0, 0x33

    if-eq p0, v0, :cond_9

    const/16 v0, 0x38

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_6

    const/16 v0, 0x23

    if-eq p0, v0, :cond_5

    const/16 v0, 0x24

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x30

    if-eq p0, v0, :cond_2

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x36

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>()V

    return-object p0

    :cond_6
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>()V

    return-object p0

    :cond_7
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>()V

    return-object p0

    :cond_8
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;-><init>()V

    return-object p0

    :cond_9
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;-><init>()V

    return-object p0

    :cond_a
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;-><init>()V

    return-object p0

    :cond_b
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>()V

    return-object p0

    :cond_c
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>()V

    return-object p0

    :cond_d
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>()V

    return-object p0

    :cond_e
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>()V

    return-object p0

    :cond_f
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>()V

    return-object p0

    :cond_10
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>()V

    return-object p0

    :cond_11
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>()V

    return-object p0

    :cond_12
    new-instance p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>()V

    return-object p0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAttribute(I)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAttribute(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
