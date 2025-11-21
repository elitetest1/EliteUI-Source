.class public Landroid/hardware/input/InputGestureData$Builder;
.super Ljava/lang/Object;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mKeyGestureType:I

.field private blacklist mTrigger:Landroid/hardware/input/InputGestureData$Trigger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/InputGestureData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    if-eqz v0, :cond_6

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No app launch data for system action launch application"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Landroid/hardware/input/AidlInputGestureData;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData;-><init>()V

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    invoke-interface {v1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    iget v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz p0, :cond_5

    instance-of v1, p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    goto :goto_1

    :cond_2
    instance-of v1, p0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    goto :goto_1

    :cond_3
    instance-of v1, p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLaunchData type is invalid!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    new-instance p0, Landroid/hardware/input/InputGestureData;

    invoke-direct {p0, v0}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No system action found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No trigger found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;
    .locals 1

    const/16 v0, 0x33

    iput v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    return-object p0
.end method

.method public blacklist setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    return-object p0
.end method
