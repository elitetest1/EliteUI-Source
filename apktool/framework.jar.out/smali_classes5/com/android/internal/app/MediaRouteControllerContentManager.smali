.class public Lcom/android/internal/app/MediaRouteControllerContentManager;
.super Ljava/lang/Object;
.source "MediaRouteControllerContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;,
        Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final blacklist VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

.field private blacklist mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMediaRouteConnectingState:[I

.field private final blacklist mMediaRouteOnState:[I

.field private final blacklist mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final blacklist mRouter:Landroid/media/MediaRouter;

.field private blacklist mVolumeLayout:Landroid/widget/LinearLayout;

.field private blacklist mVolumeSlider:Landroid/widget/SeekBar;

.field private blacklist mVolumeSliderTouched:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->updateVolume()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10100a0

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteConnectingState:[I

    const v0, 0x10102fe

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteOnState:[I

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    const-class p2, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    new-instance p2, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;Lcom/android/internal/app/MediaRouteControllerContentManager-IA;)V

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    invoke-virtual {p1}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method private blacklist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteConnectingState:[I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteOnState:[I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isVolumeControlAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103ad

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v1, 0x112004e

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private blacklist updateVolume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist bindViews(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V

    const v0, 0x1020427

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    const v0, 0x1020428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager$1;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public blacklist onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public blacklist onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    return-void
.end method

.method public blacklist onDisconnectButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->dismissView()V

    return-void
.end method

.method public blacklist requestUpdateRouteVolume(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method

.method public blacklist update()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->dismissView()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->updateVolume()V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_5

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {p0, v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
