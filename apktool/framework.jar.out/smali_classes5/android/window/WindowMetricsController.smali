.class public final Landroid/window/WindowMetricsController;
.super Ljava/lang/Object;
.source "WindowMetricsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$pFTaIba9cW7oBONGFT2xxYPhXLc(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 10

    :try_start_0
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Landroid/view/IWindowManager;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->scale(F)V

    :cond_0
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move v3, p3

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;
    .locals 9

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_0
    move-object v6, p1

    iget p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const v3, 0x3bcccccd    # 0.00625f

    mul-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v7

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v5

    new-instance v3, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)V

    new-instance p0, Landroid/view/WindowMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, v3, p1}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Ljava/util/function/Supplier;F)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayInfo;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v4, v2, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    iget v5, v2, Landroid/view/DisplayInfo;->displayId:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v8

    invoke-direct {v6, v0, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v4, v0}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v4

    iget-object v5, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v5, :cond_1

    iget v6, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v6, :cond_1

    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v8, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    :cond_1
    new-instance v6, Landroid/view/WindowInsets$Builder;

    invoke-direct {v6, v4}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v4, v2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v6, v4}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v4

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v2, v5

    new-instance v5, Landroid/view/WindowMetrics;

    invoke-direct {v5, v3, v4, v2}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
