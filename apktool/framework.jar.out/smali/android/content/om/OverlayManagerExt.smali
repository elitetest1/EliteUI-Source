.class public Landroid/content/om/OverlayManagerExt;
.super Ljava/lang/Object;
.source "OverlayManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;,
        Landroid/content/om/OverlayManagerExt$OverlayParseFailedException;
    }
.end annotation


# static fields
.field private static final blacklist CATEGORY_PATH:[Ljava/lang/String;

.field public static final blacklist CONFIG_ALL_USER_OVERLAY:I = 0x10

.field public static final blacklist CONFIG_DELETE_RESOURCE_MAP_ON_STATE_CHANGE:I = 0x200

.field public static final blacklist CONFIG_DISABLED_ON_INSTALL:I = 0x800

.field public static final blacklist CONFIG_ONLY_ON_DEFAULT_DISPLAY:I = 0x40

.field public static final blacklist CONFIG_ON_ALL_DISPLAYS:I = 0x80

.field public static final blacklist CONFIG_PROFILE_USER_OVERLAY:I = 0x20

.field public static final blacklist CONFIG_PRUNE_TARGETS:I = 0x400

.field public static final blacklist CONFIG_RECREATE_IDMAP:I = 0x8

.field public static final blacklist CONFIG_SKIP_IDMAP_DELETION_FOR_DUAL_APP_ID:I = 0x100

.field public static final blacklist CONFIG_SKIP_IDMAP_UPDATE:I = 0x4

.field public static final blacklist DEBUG:Z

.field public static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mOverlayScanner:Lcom/android/internal/content/om/OverlayScanner;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/content/om/IOverlayManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BP7kaqRRCGm7ceqlwH9kraCJorw(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/om/OverlayManagerExt;->lambda$addOverlayPaths$3(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Nv8iGNIYigGOOC9ElW9mJDCQXOs(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/om/OverlayManagerExt;->lambda$replaceOverlays$1(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/content/om/OverlayInfoExt;

    const-string v0, "OverlayInfoExt"

    sput-object v0, Landroid/content/om/OverlayManagerExt;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/content/om/OverlayManagerExt;->DEBUG:Z

    const-string v0, "/data/overlays/currentstyle"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/om/OverlayManagerExt;->CATEGORY_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/om/OverlayManagerExt;-><init>(Landroid/content/om/IOverlayManager;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/om/IOverlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    new-instance p1, Lcom/android/internal/content/om/OverlayScanner;

    invoke-direct {p1}, Lcom/android/internal/content/om/OverlayScanner;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt;->mOverlayScanner:Lcom/android/internal/content/om/OverlayScanner;

    return-void
.end method

.method public static blacklist hasOverlayInfoExts(ILandroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$addOverlayPaths$3(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->category:I

    iget v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->opsFlags:I

    iget p1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/content/om/OverlayManagerExt;->parsePathToOverlayInfo(ILjava/lang/String;II)Landroid/content/om/OverlayInfoExt;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$addOverlayPaths$4(Ljava/lang/String;Landroid/content/om/OverlayInfoExt;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$hasOverlayInfoExts$0(ILandroid/content/res/ApkAssets;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/content/om/OverlayManagerExt;->CATEGORY_PATH:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$removeOverlayPaths$5(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Landroid/content/om/OverlayInfoExt;)Z
    .locals 1

    iget-object p0, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$replaceOverlays$1(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->category:I

    iget v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->opsFlags:I

    iget p1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/content/om/OverlayManagerExt;->parsePathToOverlayInfo(ILjava/lang/String;II)Landroid/content/om/OverlayInfoExt;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$replaceOverlays$2(Ljava/lang/String;Landroid/content/om/OverlayInfoExt;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addOverlayPaths(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfoExt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/om/OverlayManagerExt$OverlayParseFailedException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda1;-><init>(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    const-string v5, "/+"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_0
    iget-object v5, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    const-string v6, ""

    const/4 v7, -0x1

    invoke-interface {v5, v4, v6, v7}, Landroid/content/om/ISamsungOverlayCallback;->onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    iget p1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-interface {p0, v0, v1, p1}, Landroid/content/om/IOverlayManager;->addOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getAllOverlays(II)[Landroid/content/om/OverlayInfoExt;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2}, Landroid/content/om/IOverlayManager;->getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getOverlay(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayForPath(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getOverlaysForTarget(Ljava/lang/String;II)[Landroid/content/om/OverlayInfoExt;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->getOverlaysForTarget(Ljava/lang/String;II)[Landroid/content/om/OverlayInfoExt;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist parsePathToOverlayInfo(ILjava/lang/String;II)Landroid/content/om/OverlayInfoExt;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v14, p3

    iget-object v2, v0, Landroid/content/om/OverlayManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, v0, Landroid/content/om/OverlayManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_1
    iget-object v2, v0, Landroid/content/om/OverlayManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    :cond_2
    sget-object v3, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    move-object v5, v2

    new-instance v2, Landroid/content/om/OverlayInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-static {v4, v1, v14}, Landroid/content/om/OverlayInfoExt;->getFormattedCategory(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    iget v11, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    new-instance v0, Landroid/content/om/OverlayInfoExt;

    invoke-direct {v0, v1, v14, v2}, Landroid/content/om/OverlayInfoExt;-><init>(IILandroid/content/om/OverlayInfo;)V

    return-object v0

    :cond_4
    sget-object v2, Landroid/content/om/OverlayManagerExt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ActivityThread was "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Landroid/content/om/OverlayManagerExt;->mOverlayScanner:Lcom/android/internal/content/om/OverlayScanner;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/content/om/OverlayScanner;->parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-ne v1, v4, :cond_6

    :cond_5
    sget-object v3, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_6
    move-object/from16 v18, v2

    new-instance v15, Landroid/content/om/OverlayInfo;

    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v3, v1, v14}, Landroid/content/om/OverlayInfoExt;->getFormattedCategory(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    iget-object v3, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    iget v0, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, -0x1

    move/from16 v23, p4

    move/from16 v24, v0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v26}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    new-instance v0, Landroid/content/om/OverlayInfoExt;

    invoke-direct {v0, v1, v14, v15}, Landroid/content/om/OverlayInfoExt;-><init>(IILandroid/content/om/OverlayInfo;)V

    return-object v0

    :cond_7
    return-object v3
.end method

.method public blacklist removeOverlayPaths(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    .locals 2

    iget v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->category:I

    iget v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-virtual {p0, v0, v1}, Landroid/content/om/OverlayManagerExt;->getAllOverlays(II)[Landroid/content/om/OverlayInfoExt;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda6;-><init>(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :try_start_0
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    iget p1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-interface {p0, v0, v1, p1}, Landroid/content/om/IOverlayManager;->removeOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist replaceOverlays(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/om/OverlayManagerExt$OverlayParseFailedException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v2, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;-><init>(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    const/4 v5, -0x1

    const-string v6, ""

    const-string v7, "/"

    const-string v8, "/+"

    const/4 v9, 0x0

    if-ge v4, v3, :cond_3

    aget-object v10, v2, v4

    if-eqz v10, :cond_1

    invoke-virtual {v10, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda8;

    invoke-direct {v8, v9}, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-interface {v7, v9, v6, v5}, Landroid/content/om/ISamsungOverlayCallback;->onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->category:I

    iget v3, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-virtual {p0, v2, v3}, Landroid/content/om/OverlayManagerExt;->getAllOverlays(II)[Landroid/content/om/OverlayInfoExt;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v10, v2

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v2, v11

    if-eqz v12, :cond_4

    iget-object v13, v12, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    if-eqz v13, :cond_4

    iget-object v13, v12, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v13, v13, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->pathsToRemove:[Ljava/lang/String;

    if-nez v2, :cond_6

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->pathsToRemove:[Ljava/lang/String;

    :cond_6
    iget-object v2, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->pathsToRemove:[Ljava/lang/String;

    array-length v10, v2

    :goto_3
    if-ge v1, v10, :cond_b

    aget-object v11, v2, v1

    if-eqz v11, :cond_7

    invoke-virtual {v11, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_7
    move-object v12, v9

    :goto_4
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/om/OverlayInfoExt;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget v13, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-virtual {p0, v11, v13}, Landroid/content/om/OverlayManagerExt;->getOverlay(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object v11, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    if-eqz v11, :cond_a

    :try_start_1
    iget-object v11, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-interface {v11, v12, v6, v5}, Landroid/content/om/ISamsungOverlayCallback;->onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    :try_start_2
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    iget-object v1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    iget p1, p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    invoke-interface {p0, v3, v0, v1, p1}, Landroid/content/om/IOverlayManager;->replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayInfoExt;IZ)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/om/OverlayManagerExt;->mService:Landroid/content/om/IOverlayManager;

    iget-object p1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->changeOverlayState(Ljava/lang/String;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setEnabled(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/om/OverlayManagerExt;->getOverlay(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/om/OverlayManagerExt;->setEnabled(Landroid/content/om/OverlayInfoExt;IZ)Z

    move-result p0

    return p0
.end method
