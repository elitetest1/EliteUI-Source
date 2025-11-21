.class public Landroid/hardware/input/KeyGestureEvent$Builder;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyGestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mFlags:I

.field private blacklist mKeyGestureType:I

.field private blacklist mKeycodes:[I

.field private blacklist mModifierState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/KeyGestureEvent;
    .locals 3

    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLaunchData type is invalid!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance p0, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {p0, v0}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    return-object p0
.end method

.method public blacklist setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    return-object p0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-object p0
.end method

.method public blacklist setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    return-object p0
.end method

.method public blacklist setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    return-object p0
.end method

.method public blacklist setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    return-object p0
.end method
