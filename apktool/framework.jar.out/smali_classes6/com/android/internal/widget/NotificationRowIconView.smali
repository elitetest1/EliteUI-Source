.class public Lcom/android/internal/widget/NotificationRowIconView;
.super Lcom/android/internal/widget/CachingIconView;
.source "NotificationRowIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;
    }
.end annotation


# instance fields
.field private blacklist mAppIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

.field private blacklist mOriginalBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mOriginalBackgroundColor:I

.field private blacklist mOriginalIconColor:I

.field private blacklist mOriginalPadding:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$lbVOC83Vspx21gXd6LAQ5aw_JtY(Lcom/android/internal/widget/NotificationRowIconView;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationRowIconView;->lambda$setImageIconAsync$2(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wX1zL1rnXaKiuEEk5_XFFAXFUGY(Lcom/android/internal/widget/NotificationRowIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->lambda$setImageIconAsync$1()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    return-void
.end method

.method private blacklist adjustViewForAppIcon()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->removePadding()V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->removeBackground()V

    return-void
.end method

.method static synthetic blacklist lambda$setImageIconAsync$0()V
    .locals 0

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->adjustViewForAppIcon()V

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$2(Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreViewForSmallIcon()V

    return-void
.end method

.method private blacklist loadAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;->shouldShowAppIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    invoke-interface {p0}, Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist removeBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist removePadding()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setPadding(IIII)V

    return-void
.end method

.method private blacklist restoreBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private blacklist restoreColors()V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, v0}, Lcom/android/internal/widget/CachingIconView;->setBackgroundColor(I)V

    iput v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    if-eq v0, v1, :cond_1

    invoke-super {p0, v0}, Lcom/android/internal/widget/CachingIconView;->setOriginalIconColor(I)V

    iput v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    :cond_1
    return-void
.end method

.method private blacklist restorePadding()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationRowIconView;->setPadding(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private blacklist restoreViewForSmallIcon()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restorePadding()V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreBackground()V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreColors()V

    return-void
.end method


# virtual methods
.method public whitelist setBackgroundColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setBackgroundColor(I)V

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    return-void
.end method

.method public blacklist setIconProvider(Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    invoke-static {}, Landroid/app/Flags;->notificationsRedesignAppIcons()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->adjustViewForAppIcon()V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreViewForSmallIcon()V

    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/app/Flags;->notificationsRedesignAppIcons()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda0;-><init>()V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/NotificationRowIconView;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/NotificationRowIconView;Landroid/graphics/drawable/Icon;)V

    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setOriginalIconColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setOriginalIconColor(I)V

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    return-void
.end method
