.class public Landroid/hardware/input/InputGestureData$KeyTrigger;
.super Ljava/lang/Object;
.source "InputGestureData.java"

# interfaces
.implements Landroid/hardware/input/InputGestureData$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyTrigger"
.end annotation


# instance fields
.field blacklist mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    const/16 v0, 0x450

    if-gt p1, v0, :cond_2

    :cond_1
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p1, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p2, p0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid keycode = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/input/InputGestureData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;Landroid/hardware/input/InputGestureData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;
    .locals 1

    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>()V

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {v0, p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->setKey(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    return-object v0
.end method

.method public blacklist getKeycode()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget p0, p0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    return p0
.end method

.method public blacklist getModifierState()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget p0, p0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyTrigger{mKeycode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mModifierState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget p0, p0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
