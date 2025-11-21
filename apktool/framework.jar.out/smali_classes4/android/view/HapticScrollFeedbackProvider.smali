.class public Landroid/view/HapticScrollFeedbackProvider;
.super Ljava/lang/Object;
.source "HapticScrollFeedbackProvider.java"

# interfaces
.implements Landroid/view/ScrollFeedbackProvider;


# static fields
.field private static final blacklist INITIAL_END_OF_LIST_HAPTICS_ENABLED:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "HapticScrollFeedbackProvider"

.field private static final blacklist TICK_INTERVAL_NO_TICK:I


# instance fields
.field private blacklist mAxis:I

.field private blacklist mCanPlayLimitFeedback:Z

.field private blacklist mDeviceId:I

.field private blacklist mHapticScrollFeedbackEnabled:Z

.field private final blacklist mIsFromView:Z

.field private blacklist mSource:I

.field private blacklist mTickIntervalPixels:I

.field private blacklist mTotalScrollPixels:I

.field private final blacklist mView:Landroid/view/View;

.field private final blacklist mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    iput-object p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    iput-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    invoke-static {}, Landroid/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->disableRotaryScrollFeedback()V

    :cond_0
    return-void
.end method

.method private blacklist maybeUpdateCurrentConfig(III)V
    .locals 2

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    iput p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    invoke-static {}, Landroid/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x400000

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->isHapticScrollFeedbackEnabled(III)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    iput v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->updateTickIntervals(III)V

    return-void
.end method

.method private blacklist updateTickIntervals(III)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->getHapticScrollFeedbackTickInterval(III)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    return-void
.end method


# virtual methods
.method public whitelist onScrollLimit(IIIZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result p3

    const/4 p4, 0x0

    const/16 v0, 0x14

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {p3, v0, p1, p2, p4}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_1
    iput-boolean p4, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    return-void
.end method

.method public whitelist onScrollProgress(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    :cond_1
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    add-int/2addr p3, p4

    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-lt p3, p4, :cond_4

    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    rem-int/2addr p3, p4

    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result p3

    const/16 p4, 0x12

    if-eqz p3, :cond_3

    iget-object p0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p0, p4, p1, p2, p3}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    return-void

    :cond_3
    iget-object p0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public whitelist onSnapToItem(III)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result p3

    const/16 v0, 0x13

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    return-void
.end method
