.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final greylist-max-o DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final greylist-max-o DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final greylist-max-o FADING:I = 0x2

.field public static final greylist-max-o NOT_DRAGGING:I = 0x0

.field public static final greylist-max-o OFF:I = 0x0

.field public static final greylist-max-o ON:I = 0x1

.field private static final greylist-max-o OPAQUE:[F

.field private static final greylist-max-o TRANSPARENT:[F


# instance fields
.field public greylist-max-o fadeScrollBars:Z

.field public greylist-max-o fadeStartTime:J

.field public greylist-max-o fadingEdgeLength:I

.field public greylist host:Landroid/view/View;

.field public greylist-max-o interpolatorValues:[F

.field private greylist-max-o mLastColor:I

.field public final greylist-max-o mScrollBarBounds:Landroid/graphics/Rect;

.field public greylist-max-o mScrollBarDraggingPos:F

.field public greylist-max-o mScrollBarDraggingState:I

.field public final greylist-max-o mScrollBarTouchBounds:Landroid/graphics/Rect;

.field public final greylist-max-o matrix:Landroid/graphics/Matrix;

.field public final greylist-max-o paint:Landroid/graphics/Paint;

.field public greylist scrollBar:Landroid/widget/ScrollBarDrawable;

.field public greylist-max-o scrollBarDefaultDelayBeforeFade:I

.field public greylist-max-o scrollBarFadeDuration:I

.field public final greylist-max-o scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public greylist-max-o scrollBarMinTouchTarget:I

.field public greylist-max-o scrollBarSize:I

.field public greylist-max-o shader:Landroid/graphics/Shader;

.field public greylist-max-r state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v1, v2

    sput-object v1, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarTouchBounds:Landroid/graphics/Rect;

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    invoke-virtual {p2, p1}, Landroid/view/View;->semGetScaledMinScrollbarTouchTarget(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarMinTouchTarget:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v0, v0

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    sget-object v2, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    iget v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v0, v2

    sget-object v2, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    iget-object p0, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setFadeColor(I)V
    .locals 9

    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v0, -0x1000000

    or-int v6, p1, v0

    const v0, 0xffffff

    and-int v7, p1, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    return-void
.end method
