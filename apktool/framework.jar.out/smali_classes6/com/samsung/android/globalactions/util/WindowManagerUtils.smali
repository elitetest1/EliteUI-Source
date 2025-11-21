.class public Lcom/samsung/android/globalactions/util/WindowManagerUtils;
.super Ljava/lang/Object;
.source "WindowManagerUtils.java"


# static fields
.field static final blacklist NAVIGATIONBAR_BOTTOM:I = 0x3

.field static final blacklist NAVIGATIONBAR_LEFT:I = 0x1

.field static final blacklist NAVIGATIONBAR_RIGHT:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "WindowManagerUtils"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private blacklist getWindowInsets(Landroid/content/Context;I)Landroid/graphics/Insets;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getNavBarPosition()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/globalactions/util/WindowManagerUtils;->getWindowInsets(Landroid/content/Context;I)Landroid/graphics/Insets;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Insets;->left:I

    if-lt v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget p0, p0, Landroid/graphics/Insets;->right:I

    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method
