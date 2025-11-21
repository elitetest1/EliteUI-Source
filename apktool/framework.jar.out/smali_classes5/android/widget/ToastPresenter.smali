.class public Landroid/widget/ToastPresenter;
.super Ljava/lang/Object;
.source "ToastPresenter.java"


# static fields
.field public static final blacklist DEVICE_DEFAULT_TEXT_TOAST_LAYOUT:I = 0x10901b1

.field private static final blacklist LONG_DURATION_TIMEOUT:J = 0x1b58L

.field private static final blacklist MAX_FONT_SCALE:F = 1.3f

.field private static final blacklist SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final blacklist TAG:Ljava/lang/String; = "ToastPresenter"

.field public static final blacklist TEXT_TOAST_LAYOUT:I = 0x10901de

.field public static final blacklist TEXT_TOAST_LAYOUT_WITH_ICON:I = 0x10901df

.field private static final blacklist WINDOW_TITLE:Ljava/lang/String; = "Toast"

.field static final blacklist localLOGV:Z


# instance fields
.field private final blacklist mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContextPackageName:Ljava/lang/String;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/ToastPresenter;->localLOGV:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iput-object p4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    return-void
.end method

.method private blacklist addToastView()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, " in "

    const-string v3, "ToastPresenter"

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE! "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    sget-boolean v1, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ADD! "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot show toast from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on display it was scheduled on."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while attempting to show toast from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {p4, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p4

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, p4, 0x7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    const/16 v0, 0x70

    and-int/2addr p4, v0

    if-ne p4, v0, :cond_1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_1
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p7, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput p8, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 p0, 0x1

    if-ne p3, p0, :cond_2

    const-wide/16 p3, 0x1b58

    goto :goto_0

    :cond_2
    const-wide/16 p3, 0xfa0

    :goto_0
    iput-wide p3, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz p9, :cond_3

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const p2, 0x1030004

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_3
    return-void
.end method

.method private blacklist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    const-string v2, "Toast"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x98

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/widget/ToastPresenter;->setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method public static blacklist getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200b3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10901b1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10901de

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10505ba

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/widget/ToastPresenter;->semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-object v0
.end method

.method public static blacklist getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x10901df

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1020006

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method private blacklist getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isCrossUserPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v0, 0x107017e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, p0

    const/4 p0, 0x0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private blacklist semGetAdjustedYoffset(II)I
    .locals 7

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050610

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10505b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v2

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v6

    if-ne v6, v3, :cond_1

    const/4 v3, 0x1

    move v5, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    if-lez v2, :cond_2

    if-ne v1, p2, :cond_2

    if-ne v0, p1, :cond_2

    add-int/2addr v2, v4

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->semGetNavigationBarHeight()I

    move-result p0

    sub-int/2addr v2, p0

    return v2

    :cond_2
    return p2
.end method

.method private blacklist semGetFocusedDisplayId()I
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IWindowManager;->getTopFocusedDisplayId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "ToastPresenter"

    const-string v0, "Unable to get focusedDisplayId"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist semGetNavigationBarHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10502f0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist semGetSipHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private blacklist semPrintDebugMessage(Landroid/view/View;)V
    .locals 7

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x3

    const-string v4, " in "

    const-string v5, "Text: "

    const-string v6, "ToastPresenter"

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/widget/ToastPresenter;->isCrossUserPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    return-object p0
.end method

.method public blacklist hide(Landroid/app/ITransientNotificationCallback;)V
    .locals 4

    const-string v0, "ToastPresenter"

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "No toast to hide."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error finishing toast window token from package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/app/ITransientNotificationCallback;->onToastHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error calling back "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to notify onToastHide()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V

    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V
    .locals 12

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "Only one toast at a time is allowed, call hide() first."

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0}, Landroid/widget/ToastPresenter;->semGetFocusedDisplayId()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v2, 0x10505bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move/from16 v0, p7

    :goto_1
    const-string v11, "ToastPresenter"

    move/from16 v5, p5

    if-nez v3, :cond_3

    invoke-direct {p0, v5, v0}, Landroid/widget/ToastPresenter;->semGetAdjustedYoffset(II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "yOffset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v0

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ToastPresenter;->semPrintDebugMessage(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Landroid/widget/ToastPresenter;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->addToastView()V

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ToastPresenter;->trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V

    if-eqz p10, :cond_4

    :try_start_0
    invoke-interface/range {p10 .. p10}, Landroid/app/ITransientNotificationCallback;->onToastShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error calling back "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to notify onToastShow()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public blacklist trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    return-void

    :cond_1
    const/16 p0, 0x40

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    const-class v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    return-void
.end method

.method public blacklist updateLayoutParams(IIFFI)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Toast must be showing to update its layout parameters."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {p5, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p5

    iput p5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p5, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object p1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object p1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object p0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
