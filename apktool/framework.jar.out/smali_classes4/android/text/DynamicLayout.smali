.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$Builder;,
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist-max-o ELLIPSIS_START:I = 0x5

.field private static final greylist-max-o ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field public static final greylist-max-o INVALID_BLOCK_INDEX:I = -0x1

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final greylist-max-o PRIORITY:I = 0x80

.field private static final greylist-max-o START:I = 0x0

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field private static final greylist-max-o TOP:I = 0x1

.field private static greylist-max-o sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final greylist-max-o sLock:[Ljava/lang/Object;

.field private static greylist sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private greylist-max-o mBase:Ljava/lang/CharSequence;

.field private greylist-max-o mBlockEndLines:[I

.field private greylist-max-o mBlockIndices:[I

.field private greylist-max-o mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBottomPadding:I

.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mDisplay:Ljava/lang/CharSequence;

.field private greylist-max-o mEllipsize:Z

.field private greylist-max-o mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mIndexFirstChangedBlock:I

.field private greylist-max-o mInts:Landroid/text/PackedIntVector;

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mNumberOfBlocks:I

.field private greylist-max-o mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/DynamicLayout$Builder;)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct/range {p0 .. p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v11, p14

    invoke-static {v11, v0}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    move/from16 v10, p15

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v1, p1

    invoke-static {v1, v2, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    iput-boolean v8, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    iput v13, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v2, p12

    iput v2, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    iput v14, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    move-object/from16 v2, p13

    iput-object v2, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v0, v1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    invoke-static {v1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method private greylist-max-o addBlockAtOffset(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result p1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput p1, v0, v2

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    :cond_0
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v0, v3

    if-le p1, v3, :cond_1

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :cond_1
    return-void
.end method

.method private greylist-max-o contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 3

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/PrecomputedText;

    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, v2}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget-object p2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt p2, p3, :cond_3

    iget-object p0, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private greylist-max-o createBlocks()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/16 v2, 0x190

    :goto_0
    const/16 v3, 0xa

    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    if-gez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    :goto_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    add-int/lit16 v2, v2, 0x190

    goto :goto_0
.end method

.method private static greylist-max-o createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p1, Landroid/text/Spanned;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private greylist-max-o generate(Landroid/text/DynamicLayout$Builder;)V
    .locals 6

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_1

    :cond_1
    new-array v0, v2, [I

    :goto_1
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget p1, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/high16 v5, 0x40000000    # 2.0f

    aput v5, v0, v4

    aput v4, v0, v3

    const/4 v5, 0x2

    aput v2, v0, v5

    iget-object v5, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v5, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    sub-int/2addr v2, p1

    aput v2, v0, v3

    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    iget-object p1, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {p1, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v4, v4, v0}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of p1, p1, Landroid/text/Spannable;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez p1, :cond_2

    new-instance p1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {p1, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object p1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_2
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v0, v4, p1, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/DynamicLayout$ChangeWatcher;

    move v2, v4

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v1, 0x800012

    invoke-interface {v0, p0, v4, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return-void
.end method

.method private greylist-max-o getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o updateAlwaysNeedsToBeRedrawn(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    :goto_1
    if-gt v0, v1, :cond_3

    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    :cond_1
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz p0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public greylist getBlockEndLines()[I
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object p0
.end method

.method public greylist-max-o getBlockIndex(I)I
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget p0, p0, p1

    return p0
.end method

.method public greylist getBlockIndices()[I
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object p0
.end method

.method public greylist-max-o getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object p0
.end method

.method public whitelist getBottomPadding()I
    .locals 0

    iget p0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return p0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 0

    iget p0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return p0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-r getIndexFirstChangedBlock()I
    .locals 0

    iget p0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return p0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public whitelist getLineCount()I
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public whitelist getLineDescent(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Layout$Directions;

    return-object p0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public whitelist getLineStart(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    const p1, 0x1fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public whitelist getLineTop(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public greylist getNumberOfBlocks()I
    .locals 0

    iget p0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return p0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result p0

    return p0
.end method

.method public whitelist getTopPadding()I
    .locals 0

    iget p0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return p0
.end method

.method public greylist-max-o reflow(Ljava/lang/CharSequence;III)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    const/16 v4, 0xa

    invoke-static {v1, v4, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    const/4 v6, 0x1

    if-gez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr v3, v6

    :goto_0
    sub-int v3, p2, v3

    add-int v7, p3, v3

    add-int v8, p4, v3

    sub-int v3, p2, v3

    add-int v9, v3, v8

    invoke-static {v1, v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    if-gez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v6

    :goto_1
    sub-int/2addr v4, v9

    add-int/2addr v7, v4

    add-int/2addr v8, v4

    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    :cond_3
    add-int v9, v3, v8

    const-class v10, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v4, v3, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    array-length v12, v9

    if-ge v10, v12, :cond_6

    aget-object v12, v9, v10

    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    aget-object v13, v9, v10

    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    if-ge v12, v3, :cond_4

    sub-int v11, v3, v12

    add-int/2addr v7, v11

    add-int/2addr v8, v11

    sub-int/2addr v3, v11

    move v11, v6

    :cond_4
    add-int v12, v3, v8

    if-le v13, v12, :cond_5

    sub-int/2addr v13, v12

    add-int/2addr v7, v13

    add-int/2addr v8, v13

    move v11, v6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    if-nez v11, :cond_3

    :cond_7
    invoke-virtual {v0, v3}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v9

    add-int v10, v3, v7

    invoke-virtual {v0, v10}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v10

    add-int v11, v3, v8

    if-ne v11, v2, :cond_8

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v10

    :cond_8
    invoke-virtual {v0, v10}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    if-ne v10, v13, :cond_9

    move v13, v6

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    :goto_3
    sget-object v14, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sget-object v16, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    const/16 v17, 0x0

    sput-object v17, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v17, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v16, :cond_a

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v6

    invoke-static {v1, v3, v11, v14, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v16

    :cond_a
    move-object/from16 v6, v16

    invoke-virtual {v6, v1, v3, v11}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v14

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v14, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    xor-int/lit8 v5, v13, 0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setCalculateBounds(Z)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v6, v5, v15}, Landroid/text/StaticLayout$Builder;->buildPartialStaticLayoutForDynamicLayout(ZLandroid/text/StaticLayout;)Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-eq v11, v2, :cond_b

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    if-ne v2, v11, :cond_b

    add-int/lit8 v5, v5, -0x1

    :cond_b
    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v14, v10, v4

    invoke-virtual {v2, v4, v14}, Landroid/text/PackedIntVector;->deleteAt(II)V

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v2, v4, v14}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iget-boolean v14, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v14, :cond_c

    if-nez v4, :cond_c

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v14

    iput v14, v0, Landroid/text/DynamicLayout;->mTopPadding:I

    sub-int/2addr v2, v14

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    :goto_4
    iget-boolean v15, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v15, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v13

    iput v13, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    add-int/2addr v2, v13

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    iget-object v15, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int/2addr v8, v7

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v7, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    iget-object v7, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v9, v12

    add-int/2addr v8, v2

    const/4 v2, 0x1

    invoke-virtual {v7, v4, v2, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    iget-boolean v7, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v8, 0x5

    if-eqz v7, :cond_e

    const/4 v7, 0x7

    new-array v7, v7, [I

    const/high16 v12, -0x80000000

    aput v12, v7, v8

    goto :goto_6

    :cond_e
    new-array v7, v8, [I

    :goto_6
    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_15

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v15

    const/16 v16, 0x0

    aput v15, v7, v16

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x1e

    or-int v17, v15, v17

    aput v17, v7, v16

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000000

    goto :goto_8

    :cond_f
    move/from16 v18, v16

    :goto_8
    or-int v17, v17, v18

    aput v17, v7, v16

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v17

    add-int v17, v17, v9

    if-lez v2, :cond_10

    sub-int v17, v17, v14

    :cond_10
    const/16 v18, 0x1

    aput v17, v7, v18

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v17

    move/from16 p2, v8

    add-int/lit8 v8, v5, -0x1

    if-ne v2, v8, :cond_11

    add-int v17, v17, v13

    :cond_11
    const/16 v18, 0x2

    aput v17, v7, v18

    const/16 v17, 0x3

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v18

    aput v18, v7, v17

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v12, v16

    if-ne v2, v8, :cond_12

    move v8, v11

    goto :goto_9

    :cond_12
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    :goto_9
    move-object/from16 v17, v6

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getStartHyphenEdit(I)I

    move-result v6

    move/from16 p3, v9

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getEndHyphenEdit(I)I

    move-result v9

    invoke-static {v6, v9}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    const/4 v9, 0x4

    aput v6, v7, v9

    invoke-direct {v0, v1, v15, v8}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_13

    const/16 v8, 0x100

    goto :goto_a

    :cond_13
    move/from16 v8, v16

    :goto_a
    or-int/2addr v6, v8

    aput v6, v7, v9

    iget-boolean v6, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v6, :cond_14

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v7, p2

    const/4 v6, 0x6

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v8

    aput v8, v7, v6

    :cond_14
    iget-object v6, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v8, v4, v2

    invoke-virtual {v6, v8, v7}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    iget-object v6, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v6, v8, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v6, v17

    goto/16 :goto_7

    :cond_15
    move-object/from16 v17, v6

    const/4 v2, 0x1

    sub-int/2addr v10, v2

    invoke-virtual {v0, v4, v10, v5}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout$Builder;->finish()V

    sget-object v1, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sput-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v17, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public greylist-max-o setBlockIndex(II)V
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, p0, p1

    return-void
.end method

.method public greylist-max-o setBlocksDataForTest([I[III)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :goto_0
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    move-result p1

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    move-result p2

    const/4 p3, 0x5

    new-array p3, p3, [I

    invoke-virtual {p1, p2, p3}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-r setIndexFirstChangedBlock(I)V
    .locals 0

    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method public greylist-max-o updateBlocks(III)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_0

    invoke-direct {v0}, Landroid/text/DynamicLayout;->createBlocks()V

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v4, v5, :cond_2

    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v5, v4

    if-lt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    move v5, v4

    :goto_2
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v7, :cond_4

    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v8, v8, v5

    if-lt v8, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    :goto_3
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v9, v8, v5

    const/4 v10, 0x1

    if-nez v4, :cond_5

    move v11, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v4, -0x1

    aget v11, v8, v11

    add-int/2addr v11, v10

    :goto_4
    if-le v1, v11, :cond_6

    move v11, v10

    goto :goto_5

    :cond_6
    move v11, v3

    :goto_5
    if-lez p3, :cond_7

    move v12, v10

    goto :goto_6

    :cond_7
    move v12, v3

    :goto_6
    if-ge v2, v9, :cond_8

    move v13, v10

    goto :goto_7

    :cond_8
    move v13, v3

    :goto_7
    if-eqz v12, :cond_9

    add-int/lit8 v14, v11, 0x1

    goto :goto_8

    :cond_9
    move v14, v11

    :goto_8
    if-eqz v13, :cond_a

    add-int/lit8 v14, v14, 0x1

    :cond_a
    sub-int v15, v5, v4

    add-int/2addr v15, v10

    add-int v16, v7, v14

    const/16 v17, -0x1

    sub-int v6, v16, v15

    if-nez v6, :cond_b

    aput v3, v8, v3

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v1, v3

    iput v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    :cond_b
    move/from16 v16, v10

    array-length v10, v8

    if-le v6, v10, :cond_c

    array-length v7, v8

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    array-length v8, v7

    new-array v8, v8, [I

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v10, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v10, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v3, v5, 0x1

    add-int v1, v4, v14

    iget v2, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v10, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    invoke-static {v2, v3, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iput-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    goto :goto_9

    :cond_c
    add-int v1, v14, v15

    if-eqz v1, :cond_d

    add-int/lit8 v1, v5, 0x1

    add-int v2, v4, v14

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v8, v1, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v1, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_9
    add-int v1, v14, v15

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v1, :cond_11

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sub-int v2, v14, v15

    const/4 v3, 0x0

    :goto_a
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v3, v7, :cond_10

    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v4, :cond_e

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v5, :cond_f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    iput-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    :cond_11
    iput v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    if-eqz v1, :cond_12

    add-int v6, v4, v14

    move v2, v6

    :goto_b
    iget v3, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v2, v3, :cond_12

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v3, v2

    add-int/2addr v5, v1

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    iget v2, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    if-eqz v11, :cond_13

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v3, p1, -0x1

    aput v3, v2, v4

    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_13
    if-eqz v12, :cond_14

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v3, p1, p3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_14
    if-eqz v13, :cond_15

    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/2addr v9, v1

    aput v9, v2, v4

    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v0, v4

    :cond_15
    return-void
.end method
