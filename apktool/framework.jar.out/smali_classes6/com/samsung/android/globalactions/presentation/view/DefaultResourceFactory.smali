.class public Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;
.super Ljava/lang/Object;
.source "DefaultResourceFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_0

    const p0, 0x1020576

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1

    const p0, 0x1020577

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2

    const p0, 0x1020579

    return p0

    :cond_2
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3

    const p0, 0x1020572

    return p0

    :cond_3
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4

    const p0, 0x1020573

    return p0

    :cond_4
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_5

    const p0, 0x1020578

    return p0

    :cond_5
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_6

    const p0, 0x1020574

    return p0

    :cond_6
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_7

    const p0, 0x1020575

    return p0

    :cond_7
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_8

    const p0, 0x102056e

    return p0

    :cond_8
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_CONFIRMATION_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_9

    const p0, 0x1020571

    return p0

    :cond_9
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_a

    const p0, 0x1090160

    return p0

    :cond_a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BOTTOM_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_b

    const p0, 0x109015d

    return p0

    :cond_b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_c

    const p0, 0x109015e

    return p0

    :cond_c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_d

    const p0, 0x109015f

    return p0

    :cond_d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BLUR_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_e

    const p0, 0x109015b

    return p0

    :cond_e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_f

    const p0, 0x1080d33

    return p0

    :cond_f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_10

    const p0, 0x1080d35

    return p0

    :cond_10
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SAFEMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_11

    const p0, 0x1080d37

    return p0

    :cond_11
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_12

    const p0, 0x1080d2c

    return p0

    :cond_12
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY_CALL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_13

    const p0, 0x1080d2d

    return p0

    :cond_13
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_MEDICAL_INFO:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_14

    const p0, 0x1080d31

    return p0

    :cond_14
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_LOCKDOWN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_15

    const p0, 0x1080d30

    return p0

    :cond_15
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_16

    const p0, 0x10809e6

    return p0

    :cond_16
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_17

    const p0, 0x10809e7

    return p0

    :cond_17
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->INTEGER_FORCE_RESTART_TIME:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_18

    const p0, 0x10e01f2

    return p0

    :cond_18
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_19

    const p0, 0x1050418

    return p0

    :cond_19
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1a

    const p0, 0x1050417

    return p0

    :cond_1a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_NAVIGATIONBAR_HEIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1b

    const p0, 0x10502f0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
