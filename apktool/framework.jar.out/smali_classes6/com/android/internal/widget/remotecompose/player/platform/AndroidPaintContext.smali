.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.super Lcom/android/internal/widget/remotecompose/core/PaintContext;
.source "AndroidPaintContext.java"


# instance fields
.field private blacklist mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field blacklist mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

.field blacklist mCanvas:Landroid/graphics/Canvas;

.field blacklist mNode:Landroid/graphics/RenderNode;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPreviousCanvas:Landroid/graphics/Canvas;

.field blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    new-instance p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method private blacklist getPath(IFF)Landroid/graphics/Path;
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPath(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private blacklist getPath(IIFFF)Landroid/graphics/Path;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath([FFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPath([FFF)Landroid/graphics/Path;
    .locals 0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    return-object p0
.end method

.method private blacklist getPathArray(IIF)[F
    .locals 4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p0

    array-length p2, p0

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v2, v3

    aput v2, v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    aget v2, p1, v1

    aput v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private blacklist getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object p0
.end method

.method public static blacklist origamiToBlendMode(I)Landroid/graphics/BlendMode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_4
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_5
    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_6
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_7
    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_8
    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_9
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_a
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_b
    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_c
    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_d
    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_e
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_f
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_10
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_11
    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_12
    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_13
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_14
    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_15
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_16
    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_17
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_18
    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_19
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_1a
    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_1b
    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_1c
    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static blacklist origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_b
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_c
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_f
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V

    return-void
.end method

.method public blacklist clipPath(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public blacklist clipRect(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public blacklist combinePath(IIIB)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p2

    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p3

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Path$Op;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    aget-object p2, v0, p4

    invoke-virtual {v1, p3, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist drawArc(FFFFFF)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawBitmap(IFFFF)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIII)V
    .locals 1

    iget-object p10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v0, p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p10, p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p10, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p10, p1, v0, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public blacklist drawCircle(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->get()Landroid/text/StaticLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public blacklist drawLine(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawOval(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawPath(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawRect(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawRoundRect(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawSector(FFFFFF)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTextOnPath(IIFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTextRun(IIIIIFFZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p4, -0x1

    if-ne p3, p4, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p6, p7, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawTweenPath(IIFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IIFFF)Landroid/graphics/Path;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist endGraphicsLayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->enableZ()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->disableZ()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    return-void
.end method

.method public blacklist getCanvas()Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTextBounds(IIII[F)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aput v0, p5, v1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    aput p1, p5, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    aput v0, p5, v1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    aput p1, p5, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    aput p1, p5, v2

    :goto_0
    and-int/lit8 p1, p4, 0x2

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, p5, p3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, p5, p2

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    aput p1, p5, p3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    aput p0, p5, p2

    return-void
.end method

.method public blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p8, -0x1

    if-eq p3, p8, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-le p3, p8, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_2
    new-instance p8, Landroid/text/TextPaint;

    invoke-direct {p8}, Landroid/text/TextPaint;-><init>()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p8, p0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    float-to-int p0, p7

    invoke-static {p1, p2, p3, p8, p0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x3

    if-eq p4, p1, :cond_4

    if-eq p4, p2, :cond_3

    const/4 p1, 0x6

    if-eq p4, p1, :cond_4

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    :goto_0
    if-eq p5, p2, :cond_7

    const/4 p1, 0x4

    if-eq p5, p1, :cond_6

    const/4 p1, 0x5

    if-eq p5, p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    goto :goto_1

    :cond_6
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    goto :goto_1

    :cond_7
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    :goto_1
    invoke-virtual {p0, p6}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    new-instance p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;-><init>(Landroid/text/StaticLayout;FF)V

    return-object p1
.end method

.method public blacklist matrixRestore()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist matrixRotate(FFF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    return-void
.end method

.method public blacklist matrixSave()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public blacklist matrixScale(FFFF)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method public blacklist matrixSkew(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    return-void
.end method

.method public blacklist matrixTranslate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    return-void
.end method

.method public blacklist reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->reset()V

    return-void
.end method

.method public blacklist restore()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist restorePaint()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public blacklist roundedClipRect(FFFFFF)V
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    new-array v5, v1, [F

    const/4 v1, 0x0

    aput p3, v5, v1

    const/4 v1, 0x1

    aput p3, v5, v1

    const/4 p3, 0x2

    aput p4, v5, p3

    const/4 p3, 0x3

    aput p4, v5, p3

    const/4 p3, 0x4

    aput p6, v5, p3

    const/4 p3, 0x5

    aput p6, v5, p3

    const/4 p3, 0x6

    aput p5, v5, p3

    const/4 p3, 0x7

    aput p5, v5, p3

    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public blacklist save()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    return-void
.end method

.method public blacklist savePaint()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    new-instance v1, Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist scale(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public blacklist setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public blacklist setGraphicsLayer(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v2, v5

    goto :goto_0

    :pswitch_2
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    goto :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setElevation(F)Z

    goto :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationZ(F)Z

    goto :goto_0

    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    goto :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    goto/16 :goto_0

    :pswitch_b
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    goto/16 :goto_0

    :pswitch_c
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    goto/16 :goto_0

    :pswitch_d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v6

    invoke-virtual {v2, v1, v1, v4, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_5

    if-eqz v6, :cond_4

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v8

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v6

    invoke-virtual {v2, v1, v1, v4, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1

    :cond_5
    if-ne v4, v0, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v8

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    :cond_7
    if-eqz v3, :cond_f

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_9
    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_a
    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_d

    if-eq v1, v0, :cond_c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    goto :goto_3

    :cond_b
    sget-object p1, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    goto :goto_3

    :cond_c
    sget-object p1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_3

    :cond_d
    sget-object p1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_3

    :cond_e
    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_3
    invoke-static {v2, v3, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    :cond_f
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist startGraphicsLayer(II)V
    .locals 2

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "layer"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public blacklist translate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public blacklist tweenPath(IIIF)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    return-void
.end method
