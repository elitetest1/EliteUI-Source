.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
.super Landroid/widget/FrameLayout;
.source "RemoteComposePlayer.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SUPPORTED_MAJOR_VERSION:I = 0x1

.field private static final blacklist MAX_SUPPORTED_MINOR_VERSION:I

.field private static final blacklist sHapticTable:[I


# instance fields
.field blacklist mAcc:Landroid/hardware/Sensor;

.field blacklist mGyro:Landroid/hardware/Sensor;

.field private blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

.field blacklist mLight:Landroid/hardware/Sensor;

.field blacklist mListener:Landroid/hardware/SensorEventListener;

.field blacklist mMag:Landroid/hardware/Sensor;

.field blacklist mSensorManager:Landroid/hardware/SensorManager;

.field private blacklist mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideHapticFeedback(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->provideHapticFeedback(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x3
        0x4
        0x6
        0x3
        0x7
        0x8
        0x9
        0xc
        0xd
        0x10
        0x11
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private blacklist applyContentBehavior(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v2, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p0, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/ScrollView;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v1, v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/HorizontalScrollView;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v1, v0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private blacklist getColorFromResource(I)I
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setBackgroundColor(I)V

    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$addIdActionListener$0(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;ILjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;->onAction(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist mapColors()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_34

    aget-object v3, v0, v2

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_34

    aget-object v3, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_2
    move v5, v8

    goto/16 :goto_3

    :sswitch_0
    const-string v5, "activatedBackgroundIndicator"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x30

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "colorPrimary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v5, 0x2f

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v5, "popupBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x2e

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v5, "panelBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v5, 0x2d

    goto/16 :goto_3

    :sswitch_4
    const-string v5, "colorBackgroundCacheHint"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0x2c

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "colorSwitchThumbNormal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/16 v5, 0x2b

    goto/16 :goto_3

    :sswitch_6
    const-string v5, "galleryItemBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v5, 0x2a

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v5, "textColorPrimaryInverse"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/16 v5, 0x29

    goto/16 :goto_3

    :sswitch_8
    const-string v5, "headerBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/16 v5, 0x28

    goto/16 :goto_3

    :sswitch_9
    const-string v5, "itemBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x27

    goto/16 :goto_3

    :sswitch_a
    const-string v5, "colorError"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v5, 0x26

    goto/16 :goto_3

    :sswitch_b
    const-string v5, "colorButtonNormal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x25

    goto/16 :goto_3

    :sswitch_c
    const-string v5, "actionModeSplitBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0x24

    goto/16 :goto_3

    :sswitch_d
    const-string/jumbo v5, "textColorTertiary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v5, 0x23

    goto/16 :goto_3

    :sswitch_e
    const-string/jumbo v5, "textColorTertiaryInverse"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v5, 0x22

    goto/16 :goto_3

    :sswitch_f
    const-string v5, "colorBackgroundFloating"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v5, 0x21

    goto/16 :goto_3

    :sswitch_10
    const-string/jumbo v5, "submitBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v5, 0x20

    goto/16 :goto_3

    :sswitch_11
    const-string v5, "colorLongPressedHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v5, 0x1f

    goto/16 :goto_3

    :sswitch_12
    const-string v5, "colorFocusedHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v5, 0x1e

    goto/16 :goto_3

    :sswitch_13
    const-string v5, "actionModeBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v5, 0x1d

    goto/16 :goto_3

    :sswitch_14
    const-string v5, "colorAccent"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v5, 0x1c

    goto/16 :goto_3

    :sswitch_15
    const-string v5, "colorBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v5, 0x1b

    goto/16 :goto_3

    :sswitch_16
    const-string v5, "detailsElementBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v5, 0x1a

    goto/16 :goto_3

    :sswitch_17
    const-string v5, "colorControlNormal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v5, 0x19

    goto/16 :goto_3

    :sswitch_18
    const-string/jumbo v5, "textColorSecondaryInverse"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v5, 0x18

    goto/16 :goto_3

    :sswitch_19
    const-string/jumbo v5, "selectableItemBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v5, 0x17

    goto/16 :goto_3

    :sswitch_1a
    const-string/jumbo v5, "panelFullBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v5, 0x16

    goto/16 :goto_3

    :sswitch_1b
    const-string v5, "colorActivatedHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v5, 0x15

    goto/16 :goto_3

    :sswitch_1c
    const-string/jumbo v5, "queryBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_2

    :cond_1e
    const/16 v5, 0x14

    goto/16 :goto_3

    :sswitch_1d
    const-string/jumbo v5, "windowBackgroundFallback"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/16 v5, 0x13

    goto/16 :goto_3

    :sswitch_1e
    const-string v5, "colorPressedHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto/16 :goto_2

    :cond_20
    const/16 v5, 0x12

    goto/16 :goto_3

    :sswitch_1f
    const-string v5, "colorControlActivated"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_2

    :cond_21
    const/16 v5, 0x11

    goto/16 :goto_3

    :sswitch_20
    const-string v5, "colorForeground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_2

    :cond_22
    const/16 v5, 0x10

    goto/16 :goto_3

    :sswitch_21
    const-string v5, "colorEdgeEffect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_2

    :cond_23
    const/16 v5, 0xf

    goto/16 :goto_3

    :sswitch_22
    const-string v5, "actionBarItemBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto/16 :goto_2

    :cond_24
    const/16 v5, 0xe

    goto/16 :goto_3

    :sswitch_23
    const-string/jumbo v5, "numbersBackgroundColor"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_2

    :cond_25
    const/16 v5, 0xd

    goto/16 :goto_3

    :sswitch_24
    const-string/jumbo v5, "textColorHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_2

    :cond_26
    const/16 v5, 0xc

    goto/16 :goto_3

    :sswitch_25
    const-string v5, "colorMultiSelectHighlight"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto/16 :goto_2

    :cond_27
    const/16 v5, 0xb

    goto/16 :goto_3

    :sswitch_26
    const-string/jumbo v5, "textColor"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto/16 :goto_2

    :cond_28
    const/16 v5, 0xa

    goto/16 :goto_3

    :sswitch_27
    const-string v5, "editTextBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_2

    :cond_29
    const/16 v5, 0x9

    goto/16 :goto_3

    :sswitch_28
    const-string v7, "colorControlHighlight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto/16 :goto_2

    :sswitch_29
    const-string/jumbo v5, "windowBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto/16 :goto_2

    :cond_2a
    const/4 v5, 0x7

    goto :goto_3

    :sswitch_2a
    const-string v5, "colorSecondary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto/16 :goto_2

    :cond_2b
    const/4 v5, 0x6

    goto :goto_3

    :sswitch_2b
    const-string v5, "colorForegroundInverse"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto/16 :goto_2

    :cond_2c
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_2c
    const-string/jumbo v5, "textColorHintInverse"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto/16 :goto_2

    :cond_2d
    const/4 v5, 0x4

    goto :goto_3

    :sswitch_2d
    const-string/jumbo v5, "panelColorBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto/16 :goto_2

    :cond_2e
    const/4 v5, 0x3

    goto :goto_3

    :sswitch_2e
    const-string/jumbo v5, "textColorLink"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto/16 :goto_2

    :cond_2f
    const/4 v5, 0x2

    goto :goto_3

    :sswitch_2f
    const-string/jumbo v5, "textColorHint"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto/16 :goto_2

    :cond_30
    const/4 v5, 0x1

    goto :goto_3

    :sswitch_30
    const-string v5, "colorPrimaryDark"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto/16 :goto_2

    :cond_31
    move v5, v1

    :cond_32
    :goto_3
    const v6, 0x1010429

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const v5, 0x10102fd

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1
    const v5, 0x1010433

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_2
    const v5, 0x1010176

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_3
    const v5, 0x101005e

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_4
    const v5, 0x10102ab

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_5
    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_6
    const v5, 0x101004c

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_7
    const v5, 0x1010039

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_8
    const v5, 0x101012f

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_9
    const v5, 0x1010130

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_a
    const v5, 0x1010543

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_b
    const v5, 0x101042b

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_c
    const v5, 0x101039d

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_d
    const v5, 0x1010212

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_e
    const v5, 0x1010213

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_f
    const v5, 0x10104e2

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_10
    const v5, 0x1010488

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_11
    const v5, 0x101038e

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_12
    const v5, 0x101038f

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_13
    const v5, 0x10102db

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_14
    const v5, 0x1010435

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_15
    const v5, 0x1010031

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_16
    const v5, 0x101034e

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_17
    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_18
    const v5, 0x101003a

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_19
    const v5, 0x101030e

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1a
    const v5, 0x101005f

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1b
    const v5, 0x1010390

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1c
    const v5, 0x1010487

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1d
    const v5, 0x1010503

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1e
    const v5, 0x101038d

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1f
    const v5, 0x101042a

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_20
    const v5, 0x1010030

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_21
    const v5, 0x10104ce

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_22
    const v5, 0x101039c

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_23
    const v5, 0x10104a2

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_24
    const v5, 0x1010099

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_25
    const v5, 0x1010391

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_26
    const v5, 0x1010098

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_27
    const v5, 0x1010352

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_28
    const v5, 0x101042c

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_29
    const v5, 0x1010054

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2a
    const v5, 0x1010530

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2b
    const v5, 0x1010206

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2c
    const v5, 0x101003f

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2d
    const v5, 0x1010061

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2e
    const v5, 0x101009b

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_2f
    const v5, 0x101009a

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_30
    const v5, 0x1010434

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_34
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d4b52cb -> :sswitch_30
        -0x79908a23 -> :sswitch_2f
        -0x798eb8b0 -> :sswitch_2e
        -0x6a3f59b3 -> :sswitch_2d
        -0x625ee56d -> :sswitch_2c
        -0x5efbf4b6 -> :sswitch_2b
        -0x5ee4feaf -> :sswitch_2a
        -0x5df81ec2 -> :sswitch_29
        -0x4cd1b2a6 -> :sswitch_28
        -0x430e7d1b -> :sswitch_27
        -0x3f64d1ca -> :sswitch_26
        -0x3a2a2f5e -> :sswitch_25
        -0x3991e4e2 -> :sswitch_24
        -0x367b7cd5 -> :sswitch_23
        -0x29fa7002 -> :sswitch_22
        -0x2555828f -> :sswitch_21
        -0x20bc2afa -> :sswitch_20
        -0x18087589 -> :sswitch_1f
        -0x15af2bcb -> :sswitch_1e
        -0x159c31c0 -> :sswitch_1d
        -0xd790fea -> :sswitch_1c
        -0x74ea95a -> :sswitch_1b
        0x14aac41 -> :sswitch_1a
        0x2b89a97 -> :sswitch_19
        0xd357d72 -> :sswitch_18
        0xe082e01 -> :sswitch_17
        0x10e99f28 -> :sswitch_16
        0x1993c0f1 -> :sswitch_15
        0x1add7a0d -> :sswitch_14
        0x21122f07 -> :sswitch_13
        0x26566480 -> :sswitch_12
        0x2d8aed51 -> :sswitch_11
        0x31673366 -> :sswitch_10
        0x39eaac17 -> :sswitch_f
        0x45926168 -> :sswitch_e
        0x45d104a8 -> :sswitch_d
        0x45d919af -> :sswitch_c
        0x479ba9bc -> :sswitch_b
        0x4b6fd865 -> :sswitch_a
        0x4d3730a1 -> :sswitch_9
        0x5563079b -> :sswitch_8
        0x5765e2a4 -> :sswitch_7
        0x57763c93 -> :sswitch_6
        0x5ef2ad66 -> :sswitch_5
        0x60354f38 -> :sswitch_4
        0x62508652 -> :sswitch_3
        0x6824bafa -> :sswitch_2
        0x743ff11f -> :sswitch_1
        0x7f61def0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist provideHapticFeedback(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->performHapticFeedback(I)Z

    return-void
.end method

.method private blacklist setRColor(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getColorFromResource(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setColor(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setupSensors()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->hasSensorListeners([I)I

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->registerListener()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearSystemLocalString(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SYSTEM:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearUserLocalBitmap(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalBitmap(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearUserLocalColor(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalColor(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearUserLocalFloat(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalFloat(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearUserLocalInt(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalInt(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearUserLocalString(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEvalTime()F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getEvalTime()F

    move-result p0

    return p0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedColors()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedFloats()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedImages()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedStrings()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOpsPerFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getOpsPerFrame()I

    move-result p0

    return p0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p0

    return-object p0
.end method

.method public whitelist invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist isDraggable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->isDraggable()Z

    move-result p0

    return p0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    return-void
.end method

.method public blacklist registerListener()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    :cond_0
    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    new-array v2, v0, [Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v3, v2, v4

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v1, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setColor(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDebug(I)V

    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->isUpdateDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentScroll()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->applyContentBehavior(I)V

    goto :goto_0

    :cond_1
    const-string v0, "RemoteComposePlayer"

    const-string v1, "Unsupported document "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    sget-object p1, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->clearAccessibilityDelegate(Landroid/view/View;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mapColors()V

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setupSensors()V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public blacklist setShaderControl(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    return-void
.end method

.method public blacklist setSystemLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SYSTEM:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getTheme()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setTheme(I)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setUseChoreographer(Z)V

    return-void
.end method

.method public blacklist setUserLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public blacklist setUserLocalColor(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalColor(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setUserLocalFloat(Ljava/lang/String;F)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public blacklist setUserLocalInt(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setUserLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public blacklist updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 3

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    return-void
.end method
