.class final Landroid/view/DisplayShape$Cache;
.super Ljava/lang/Object;
.source "DisplayShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field private static blacklist sCacheForPath:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayShape:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPath:Landroid/graphics/Path;

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSpec:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDisplayShape(Ljava/lang/String;FII)Landroid/view/DisplayShape;
    .locals 9

    sget-object v1, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    if-ne v0, p2, :cond_0

    sget v0, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    if-ne v0, p3, :cond_0

    sget v0, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    sget-object p0, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    monitor-exit v1

    return-object p0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Landroid/view/DisplayShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFILandroid/view/DisplayShape-IA;)V

    monitor-enter v1

    :try_start_1
    sput-object v3, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    sput v4, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    sput v5, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    sput v6, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    sput-object v2, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static blacklist getPath(Landroid/view/DisplayShape;)Landroid/graphics/Path;
    .locals 6

    sget-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    invoke-virtual {p0, v1}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayWidth(Landroid/view/DisplayShape;)I

    move-result v4

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayHeight(Landroid/view/DisplayShape;)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    :cond_1
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_5
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_6
    monitor-enter v0

    :try_start_1
    sput-object p0, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    sput-object v1, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
