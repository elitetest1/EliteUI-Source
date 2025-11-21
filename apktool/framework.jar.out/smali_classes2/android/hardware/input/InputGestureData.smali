.class public final Landroid/hardware/input/InputGestureData;
.super Ljava/lang/Object;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputGestureData$Trigger;,
        Landroid/hardware/input/InputGestureData$Action;,
        Landroid/hardware/input/InputGestureData$KeyTrigger;,
        Landroid/hardware/input/InputGestureData$TouchpadTrigger;,
        Landroid/hardware/input/InputGestureData$Filter;,
        Landroid/hardware/input/InputGestureData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist TOUCHPAD_GESTURE_TYPE_THREE_FINGER_TAP:I = 0x1

.field public static final blacklist TOUCHPAD_GESTURE_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mInputGestureData:Landroid/hardware/input/AidlInputGestureData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputGestureData(Landroid/hardware/input/InputGestureData;)Landroid/hardware/input/AidlInputGestureData;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData;->validate()V

    return-void
.end method

.method public static blacklist createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;
    .locals 2

    new-instance v0, Landroid/hardware/input/InputGestureData$KeyTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(IILandroid/hardware/input/InputGestureData-IA;)V

    return-object v0
.end method

.method public static blacklist createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;
    .locals 2

    new-instance v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(ILandroid/hardware/input/InputGestureData-IA;)V

    return-object v0
.end method

.method public static blacklist createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;Landroid/hardware/input/InputGestureData-IA;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, null touchpad trigger!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, invalid trigger type!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Landroid/hardware/input/InputGestureData$KeyTrigger;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;Landroid/hardware/input/InputGestureData-IA;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "aidlTrigger is corrupted, null key trigger!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v0, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v1, v1, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object v2, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object p0, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0
.end method

.method private blacklist validate()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetkeyGestureType(Landroid/hardware/input/InputGestureData$Action;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetkeyGestureType(Landroid/hardware/input/InputGestureData$Action;)I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/hardware/input/InputGestureData$Action;->-$$Nest$fgetappLaunchData(Landroid/hardware/input/InputGestureData$Action;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No app launch data for system action launch application"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No system action found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No trigger found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/input/InputGestureData;

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAction()Landroid/hardware/input/InputGestureData$Action;
    .locals 2

    new-instance v0, Landroid/hardware/input/InputGestureData$Action;

    iget-object v1, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/input/InputGestureData$Action;-><init>(ILandroid/hardware/input/AppLaunchData;)V

    return-object v0
.end method

.method public blacklist getAidlData()Landroid/hardware/input/AidlInputGestureData;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    return-object p0
.end method

.method public blacklist getTrigger()Landroid/hardware/input/InputGestureData$Trigger;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    iget-object p0, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-static {p0}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData;->mInputGestureData:Landroid/hardware/input/AidlInputGestureData;

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InputGestureData { trigger = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
