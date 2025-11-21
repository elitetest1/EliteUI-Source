.class public Landroid/view/CutoutSpecification$Parser;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CutoutSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private blacklist mBindBottomCutout:Z

.field private blacklist mBindLeftCutout:Z

.field private blacklist mBindRightCutout:Z

.field private blacklist mBottomBound:Landroid/graphics/Rect;

.field private blacklist mInDp:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mIsCloserToStartSide:Z

.field private final blacklist mIsShortEdgeOnTop:Z

.field private blacklist mIsTouchShortEdgeEnd:Z

.field private blacklist mIsTouchShortEdgeStart:Z

.field private blacklist mLeftBound:Landroid/graphics/Rect;

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private blacklist mPositionFromBottom:Z

.field private blacklist mPositionFromCenterVertical:Z

.field private blacklist mPositionFromLeft:Z

.field private blacklist mPositionFromRight:Z

.field private blacklist mRightBound:Landroid/graphics/Rect;

.field private blacklist mSafeInsetBottom:I

.field private blacklist mSafeInsetLeft:I

.field private blacklist mSafeInsetRight:I

.field private blacklist mSafeInsetTop:I

.field private final blacklist mStableDensity:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRectF:Landroid/graphics/RectF;

.field private blacklist mTopBound:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsets(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPath(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/CutoutSpecification$Parser;)F
    .locals 0

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor blacklist <init>(FII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    return-void
.end method

.method constructor blacklist <init>(FIIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput p1, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iput p3, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    iput p4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    return-void
.end method

.method private blacklist computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private blacklist computeSafeInsets(ILandroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    return p0

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    return p0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p0

    return v1

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-lez p1, :cond_3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge p1, p0, :cond_3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getSafeInset(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return p0

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return p0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return p0

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {p2, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v2, :cond_1

    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v0, p2, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    invoke-static {p1, v0, p2}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification$Parser;->getSafeInset(I)I

    move-result p2

    invoke-direct {p0, p1, p3}, Landroid/view/CutoutSpecification$Parser;->computeSafeInsets(ILandroid/graphics/Rect;)I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p1, v0}, Landroid/view/CutoutSpecification$Parser;->setSafeInset(II)V

    :cond_4
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private blacklist parseSpecWithoutDp(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_0
    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v3, "@left"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    if-nez v3, :cond_1

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    :cond_1
    add-int/lit8 v4, v4, 0x5

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string v3, "@right"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-nez v3, :cond_3

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    :cond_3
    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    :cond_4
    const-string v3, "@bottom"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x7

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    goto :goto_1

    :cond_5
    const-string v3, "@center_vertical"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x10

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    goto :goto_1

    :cond_6
    const-string v3, "@cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x7

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_7
    const-string v3, "@bind_left_cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    add-int/lit8 v4, v4, 0x11

    goto :goto_1

    :cond_8
    const-string v3, "@bind_right_cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    add-int/lit8 v4, v4, 0x12

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    if-nez v1, :cond_b

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method private blacklist parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/view/CutoutSpecification;->-$$Nest$sfgetMINIMAL_ACCEPTABLE_PATH_LENGTH()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string p0, "CutoutSpecification"

    const-string p1, "According to SVG definition, it shouldn\'t happen"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/CutoutSpecification$Parser;->translateMatrix()V

    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p1, v0}, Landroid/view/CutoutSpecification$Parser;->computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-gtz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-lt p1, v2, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    goto :goto_6

    :cond_5
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-gtz p1, :cond_6

    move p1, v0

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-lt p1, v2, :cond_7

    move p1, v0

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_8

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    :goto_6
    invoke-direct {p0, p2}, Landroid/view/CutoutSpecification$Parser;->setEdgeCutout(Landroid/graphics/Path;)V

    return-void
.end method

.method private blacklist resetStatus(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    return-void
.end method

.method private blacklist setEdgeCutout(Landroid/graphics/Path;)V
    .locals 6

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-eqz v4, :cond_2

    iget-object v5, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void

    :cond_3
    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    :cond_4
    return-void
.end method

.method private blacklist setSafeInset(II)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return-void

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return-void

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    :cond_3
    return-void
.end method

.method private blacklist translateMatrix()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_0
    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    if-eqz v3, :cond_3

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "@dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSpecWithoutDp(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    new-instance p1, Landroid/view/CutoutSpecification;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification-IA;)V

    return-object p1
.end method
