.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_NEW_LINE:C = '\n'

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist ELLIPSIS_START:I = 0x5

.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o EXTRA_ROUNDING:D = 0.5

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field private static final greylist-max-o START:I = 0x0

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field static final greylist-max-o TAG:Ljava/lang/String; = "StaticLayout"

.field private static final greylist-max-o TOP:I = 0x1


# instance fields
.field private greylist-max-o mBottomPadding:I

.field private greylist mColumns:I

.field private blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    iput-object v1, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v1, 0x7

    iput v1, v0, Landroid/text/StaticLayout;->mColumns:I

    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZI)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v1, p3

    iput v1, v0, Landroid/text/StaticLayout;->mColumns:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Ellipsizer;

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    iput v2, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    iput-object v2, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    :cond_2
    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    const-string v1, "Constructing StaticLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/StaticLayout;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p9, p8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p10}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p11}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p12}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, p13}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    if-eqz p11, :cond_0

    const/4 p2, 0x7

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    invoke-direct {p0, p1, p10, p2}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {p0, v2}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v3

    sub-float v3, p5, v3

    cmpg-float v4, p8, v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    if-nez p10, :cond_0

    iget-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v0, p0, v2

    add-int/2addr v0, v5

    aput v6, p1, v0

    mul-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x6

    aput v6, p1, p0

    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p9

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-int v7, p2, p1

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const-string v9, "StaticLayout"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v1, v8, :cond_4

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v11, :cond_3

    move v1, v7

    move v8, v10

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v9, v1, -0x1

    add-int/2addr v9, p1

    sub-int v9, v9, p4

    invoke-virtual {v0, v9}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v9

    add-float/2addr v8, v9

    add-float v9, v8, v4

    cmpl-float v9, v9, v3

    if-lez v9, :cond_1

    :goto_1
    if-ge v1, v7, :cond_2

    add-int v3, v1, p1

    sub-int v3, v3, p4

    invoke-virtual {v0, v3}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v3

    cmpl-float v3, v3, v10

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move p1, v1

    goto/16 :goto_c

    :cond_3
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Start Ellipsis only supported with one line"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v8, :cond_c

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v8, :cond_c

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v8, :cond_5

    goto :goto_7

    :cond_5
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v11, :cond_a

    sub-float/2addr v3, v4

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v3, v1

    move v4, v7

    move v8, v10

    :goto_2
    if-lez v4, :cond_7

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v9, p1

    sub-int v9, v9, p4

    invoke-virtual {v0, v9}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v9

    add-float/2addr v9, v8

    cmpl-float v12, v9, v1

    if-lez v12, :cond_6

    :goto_3
    if-ge v4, v7, :cond_7

    add-int v1, v4, p1

    sub-int v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, -0x1

    move v8, v9

    goto :goto_2

    :cond_7
    sub-float/2addr v3, v8

    :goto_4
    if-ge v6, v4, :cond_9

    add-int v1, v6, p1

    sub-int v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v1

    add-float/2addr v10, v1

    cmpl-float v1, v10, v3

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    sub-int p1, v4, v6

    goto :goto_c

    :cond_a
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Middle Ellipsis only supported with one line"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    move p1, v6

    goto :goto_c

    :cond_c
    :goto_7
    move v1, v10

    :goto_8
    if-ge v6, v7, :cond_e

    add-int v8, v6, p1

    sub-int v8, v8, p4

    invoke-virtual {v0, v8}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v8

    add-float/2addr v1, v8

    add-float v8, v1, v4

    cmpl-float v8, v8, v3

    if-lez v8, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    sub-int v1, v7, v6

    if-eqz p10, :cond_10

    if-nez v1, :cond_10

    if-lez v7, :cond_10

    add-int/lit8 v1, v7, -0x1

    :goto_a
    if-lez v1, :cond_f

    add-int v3, v1, p1

    sub-int v3, v3, p4

    invoke-virtual {v0, v3}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v4

    cmpl-float v4, v4, v10

    if-nez v4, :cond_f

    if-eqz p11, :cond_f

    aget-char v3, p11, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_f

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_f
    sub-int/2addr v7, v1

    move v6, v1

    goto :goto_b

    :cond_10
    move v7, v1

    :goto_b
    move p1, v7

    :goto_c
    iput-boolean v11, p0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v1, p0, v2

    add-int/2addr v1, v5

    aput v6, v0, v1

    mul-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x6

    aput p1, v0, p0

    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method private greylist-max-o getTotalInsets(I)F
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz p0, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    add-int/2addr v0, p0

    :cond_1
    int-to-float p0, v0

    return p0
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p11

    move-object/from16 v7, p13

    move/from16 v12, p18

    move-object/from16 v10, p24

    iget v11, v0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v13, v11, v1

    add-int/2addr v1, v13

    const/4 v14, 0x1

    add-int/2addr v1, v14

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v15

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, v2

    :goto_0
    iget-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    if-lt v11, v1, :cond_1

    const-class v1, Landroid/text/Layout$Directions;

    invoke-static {v11}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    move/from16 v1, p4

    if-eqz v9, :cond_4

    iput v1, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v2, p5

    iput v2, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v3, p6

    iput v3, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v5, p7

    iput v5, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v1, v4

    :goto_1
    array-length v2, v9

    if-ge v1, v2, :cond_3

    move v2, v1

    aget-object v1, v9, v2

    instance-of v3, v1, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v5, p12, v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v8, p27

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    move-object/from16 v7, p13

    goto :goto_2

    :cond_2
    move/from16 v17, v2

    aget v5, p12, v17

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v7, p13

    invoke-interface/range {v1 .. v7}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v1, v17, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v20, v4

    goto :goto_3

    :cond_4
    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p7

    move/from16 v20, v5

    :goto_3
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    if-nez v11, :cond_5

    move/from16 v21, v14

    goto :goto_4

    :cond_5
    const/16 v21, 0x0

    :goto_4
    add-int/lit8 v1, v11, 0x1

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v2, :cond_6

    move/from16 v22, v14

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    if-eqz v10, :cond_e

    if-eqz p28, :cond_7

    iget v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v14

    if-ne v1, v2, :cond_7

    move v4, v14

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-ne v2, v14, :cond_8

    if-nez p28, :cond_9

    :cond_8
    if-eqz v21, :cond_b

    if-nez p28, :cond_b

    :cond_9
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v1, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v5, p25

    move/from16 v8, p26

    move-object/from16 v9, p27

    move-object v6, v10

    move v7, v11

    move-object/from16 v11, p22

    move v10, v4

    move/from16 v4, p23

    goto :goto_9

    :cond_b
    :goto_8
    if-nez v21, :cond_d

    if-nez v22, :cond_c

    if-nez p28, :cond_d

    :cond_c
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v1, :cond_d

    goto :goto_7

    :goto_9
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    move v3, v1

    move v1, v4

    move v4, v2

    goto :goto_a

    :cond_d
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v10

    move v7, v11

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v5, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v11, v5, v7

    add-int/lit8 v11, v11, 0x5

    const/4 v8, 0x0

    aput v8, v2, v11

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x6

    aput v8, v2, v5

    goto :goto_b

    :cond_e
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v10

    move v7, v11

    :goto_a
    const/4 v8, 0x0

    :goto_b
    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_f

    :goto_c
    move v2, v14

    goto :goto_e

    :cond_f
    if-eq v1, v12, :cond_10

    if-lez v12, :cond_10

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v5, p1

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_10

    move v2, v14

    goto :goto_d

    :cond_10
    move v2, v8

    :goto_d
    if-ne v4, v12, :cond_11

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    if-ne v3, v12, :cond_12

    if-eqz v2, :cond_12

    goto :goto_c

    :cond_12
    move v2, v8

    :goto_e
    if-eqz v21, :cond_14

    if-eqz p20, :cond_13

    sub-int v5, v19, v17

    iput v5, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_13
    if-eqz p19, :cond_14

    move/from16 v17, v19

    :cond_14
    if-eqz v2, :cond_16

    if-eqz p20, :cond_15

    sub-int v5, v20, v18

    iput v5, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_15
    if-eqz p19, :cond_16

    move/from16 v18, v20

    :cond_16
    if-eqz p16, :cond_19

    if-nez p21, :cond_17

    if-nez v2, :cond_19

    :cond_17
    sub-int v2, v18, v17

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v2, v5

    add-float v2, v2, p10

    float-to-double v9, v2

    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_18

    add-double/2addr v9, v11

    double-to-int v2, v9

    goto :goto_f

    :cond_18
    neg-double v9, v9

    add-double/2addr v9, v11

    double-to-int v2, v9

    neg-int v2, v2

    goto :goto_f

    :cond_19
    move v2, v8

    :goto_f
    aput v3, v16, v13

    add-int/lit8 v5, v13, 0x1

    aput p8, v16, v5

    add-int/lit8 v5, v13, 0x2

    add-int v9, v18, v2

    aput v9, v16, v5

    add-int/lit8 v5, v13, 0x3

    aput v2, v16, v5

    iget-boolean v5, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v5, :cond_1b

    if-eqz v22, :cond_1b

    if-eqz p19, :cond_1a

    goto :goto_10

    :cond_1a
    move/from16 v20, v18

    :goto_10
    sub-int v20, v20, v17

    add-int v9, p8, v20

    iput v9, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1b
    sub-int v18, v18, v17

    add-int v18, v18, v2

    add-int v2, p8, v18

    iget v9, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v10, v13, v9

    aput v4, v16, v10

    add-int/2addr v9, v13

    add-int/2addr v9, v14

    aput v2, v16, v9

    aget v9, v16, v13

    if-eqz p14, :cond_1c

    const/high16 v10, 0x20000000

    goto :goto_11

    :cond_1c
    move v10, v8

    :goto_11
    or-int/2addr v9, v10

    aput v9, v16, v13

    if-eqz v5, :cond_1f

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v5, :cond_1d

    add-int/lit8 v5, v13, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v6

    invoke-static {v8, v6}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v5

    goto :goto_12

    :cond_1d
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v5, :cond_1e

    add-int/lit8 v5, v13, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v5

    goto :goto_12

    :cond_1e
    add-int/lit8 v5, v13, 0x4

    invoke-static {v8, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v5

    goto :goto_12

    :cond_1f
    add-int/lit8 v5, v13, 0x4

    aput p15, v16, v5

    :goto_12
    aget v5, v16, v13

    shl-int/lit8 v6, v15, 0x1e

    or-int/2addr v5, v6

    aput v5, v16, v13

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int/2addr v3, v1

    sub-int v1, v4, v1

    move-object/from16 v4, p17

    invoke-virtual {v4, v3, v1}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v1

    aput-object v1, v5, v7

    iget v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v14

    iput v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    return v2
.end method

.method static blacklist packHyphenEdit(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x18

    shr-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    :cond_0
    iget-object p0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 64

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    int-to-float v14, v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v21

    const/4 v10, 0x0

    iput v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v10, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v7, 0x1

    if-ge v2, v7, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v30

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v12, v8

    const/16 v31, 0x0

    if-nez v8, :cond_2

    cmpl-float v8, v13, v31

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v10

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v7

    :goto_2
    move/from16 v25, v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    iget-object v8, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v8, :cond_3

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_7

    :cond_3
    if-nez v8, :cond_4

    move v8, v10

    goto :goto_3

    :cond_4
    array-length v8, v8

    :goto_3
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_5

    move v9, v10

    goto :goto_4

    :cond_5
    array-length v9, v9

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [I

    move v7, v10

    :goto_5
    if-ge v7, v8, :cond_6

    iget-object v10, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v10, v10, v7

    aput v10, v2, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v9, :cond_7

    aget v8, v2, v7

    iget-object v10, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v10, v10, v7

    add-int/2addr v8, v10

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v23, v3

    move/from16 v20, v4

    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v10, v3

    goto :goto_7

    :cond_8
    move/from16 v23, v3

    move/from16 v20, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    new-instance v3, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v3}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v7

    invoke-static {v7}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Builder;->setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v2

    new-instance v3, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v3}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_9

    move-object v7, v1

    check-cast v7, Landroid/text/Spanned;

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v22, v2

    instance-of v2, v1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Landroid/text/PrecomputedText;

    move-object/from16 v24, v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v7

    move/from16 v26, v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    move/from16 v27, v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v9

    move-object/from16 v36, v3

    move/from16 v32, v4

    move/from16 v17, v12

    move/from16 v4, v20

    move-object/from16 v35, v22

    move/from16 v3, v23

    move-object/from16 v37, v24

    move/from16 v33, v26

    move/from16 v34, v27

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v7

    if-eq v7, v12, :cond_b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    goto :goto_a

    :cond_b
    new-instance v7, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v7, v6}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    goto :goto_a

    :cond_c
    move-object/from16 v36, v3

    move/from16 v32, v4

    move-object/from16 v37, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v17, v12

    move/from16 v4, v20

    move-object/from16 v35, v22

    move/from16 v3, v23

    const/4 v12, 0x1

    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-nez v2, :cond_d

    new-instance v2, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v9

    move v8, v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    move/from16 v19, v8

    move-object v8, v5

    move-object v5, v2

    const/4 v2, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    move-object/from16 v28, v6

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    move/from16 v63, v7

    move v7, v2

    move-object v2, v5

    move v5, v6

    move/from16 v6, v63

    invoke-static/range {v1 .. v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    goto :goto_b

    :cond_d
    move-object v8, v5

    move-object/from16 v28, v6

    move/from16 v19, v10

    const/4 v7, 0x0

    :goto_b
    move/from16 v24, v7

    move/from16 v38, v24

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_c
    array-length v12, v2

    if-ge v7, v12, :cond_37

    if-nez v7, :cond_e

    move v12, v3

    goto :goto_d

    :cond_e
    add-int/lit8 v12, v7, -0x1

    aget-object v12, v2, v12

    iget v12, v12, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    move-object/from16 p1, v1

    aget-object v1, v2, v7

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    move-object/from16 v27, v2

    move-object/from16 v2, v37

    move/from16 v29, v3

    if-eqz v2, :cond_16

    const-class v3, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v2, v12, v1, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v37, v6

    move/from16 v39, v7

    move-object/from16 v42, v8

    move/from16 v40, v11

    move/from16 v41, v40

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_e
    array-length v8, v3

    if-ge v7, v8, :cond_10

    aget-object v8, v3, v7

    move-object/from16 v43, v3

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v44

    sub-int v40, v40, v44

    aget-object v3, v43, v7

    move/from16 v44, v7

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v41, v41, v3

    instance-of v3, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_f

    check-cast v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v8}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v3

    :cond_f
    add-int/lit8 v7, v44, 0x1

    move-object/from16 v3, v43

    goto :goto_e

    :cond_10
    const-class v3, Landroid/text/style/LineHeightSpan;

    invoke-static {v2, v12, v1, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LineHeightSpan;

    array-length v7, v3

    if-nez v7, :cond_11

    move v7, v6

    move/from16 v6, v40

    move/from16 v8, v41

    const/4 v3, 0x0

    goto :goto_11

    :cond_11
    if-eqz v5, :cond_12

    array-length v7, v5

    array-length v8, v3

    if-ge v7, v8, :cond_13

    :cond_12
    array-length v5, v3

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v5

    :cond_13
    const/4 v7, 0x0

    :goto_f
    array-length v8, v3

    if-ge v7, v8, :cond_15

    aget-object v8, v3, v7

    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ge v8, v12, :cond_14

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    aput v8, v5, v7

    goto :goto_10

    :cond_14
    aput v24, v5, v7

    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_15
    move v7, v6

    move/from16 v6, v40

    move/from16 v8, v41

    goto :goto_11

    :cond_16
    move-object/from16 v37, v6

    move/from16 v39, v7

    move-object/from16 v42, v8

    move v6, v11

    move v8, v6

    const/4 v3, 0x0

    const/4 v7, 0x1

    :goto_11
    if-eqz v2, :cond_18

    move-object/from16 v40, v3

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v12, v1, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    move-object/from16 v41, v2

    array-length v2, v3

    if-lez v2, :cond_19

    array-length v2, v3

    move-object/from16 v43, v5

    new-array v5, v2, [F

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    const/4 v9, 0x0

    :goto_12
    array-length v10, v3

    if-ge v9, v10, :cond_17

    aget-object v10, v3, v9

    invoke-interface {v10}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v10

    int-to-float v10, v10

    aput v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_17
    const/4 v9, 0x0

    invoke-static {v5, v9, v2}, Ljava/util/Arrays;->sort([FII)V

    move-object v2, v5

    goto :goto_13

    :cond_18
    move-object/from16 v41, v2

    move-object/from16 v40, v3

    :cond_19
    move-object/from16 v43, v5

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_13
    aget-object v3, v27, v39

    iget-object v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v23

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v46

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v47

    int-to-float v5, v8

    move-object/from16 v10, v36

    invoke-virtual {v10, v5}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    int-to-float v5, v6

    invoke-virtual {v10, v5, v7}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v10, v2, v5}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v2

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v7, v35

    invoke-virtual {v7, v2, v10, v5}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v5

    move/from16 v9, v38

    if-ge v9, v5, :cond_1a

    new-array v9, v5, [I

    move-object/from16 v36, v7

    new-array v7, v5, [F

    move-object/from16 v18, v7

    new-array v7, v5, [F

    move-object/from16 v20, v7

    new-array v7, v5, [F

    move-object/from16 v22, v7

    new-array v7, v5, [Z

    move-object/from16 v37, v7

    new-array v7, v5, [I

    move/from16 v50, v5

    move-object/from16 v49, v7

    move-object/from16 v44, v18

    move-object/from16 v45, v20

    move-object/from16 v38, v22

    move-object/from16 v48, v37

    move-object/from16 v37, v9

    goto :goto_14

    :cond_1a
    move-object/from16 v36, v7

    move/from16 v50, v9

    move-object/from16 v38, v18

    move-object/from16 v48, v20

    move-object/from16 v49, v22

    :goto_14
    const/4 v7, 0x0

    :goto_15
    if-ge v7, v5, :cond_1b

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v9

    aput v9, v37, v7

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v9

    aput v9, v44, v7

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v9

    aput v9, v45, v7

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v9

    aput v9, v38, v7

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v9

    aput-boolean v9, v48, v7

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v9

    move-object/from16 v18, v10

    invoke-virtual {v2, v7}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v10

    invoke-static {v9, v10}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v9

    aput v9, v49, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v18

    goto :goto_15

    :cond_1b
    move-object/from16 v18, v10

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v7, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v2, v7

    if-eqz v15, :cond_1d

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v7, :cond_1c

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1d

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v7, :cond_1d

    :cond_1c
    const/4 v10, 0x1

    goto :goto_16

    :cond_1d
    const/4 v10, 0x0

    :goto_16
    if-lez v2, :cond_22

    if-ge v2, v5, :cond_22

    if-eqz v10, :cond_22

    add-int/lit8 v7, v2, -0x1

    move v9, v7

    move/from16 v20, v31

    const/4 v10, 0x0

    :goto_17
    if-ge v9, v5, :cond_21

    add-int/lit8 v0, v5, -0x1

    if-ne v9, v0, :cond_1e

    aget v0, v44, v9

    add-float v20, v20, v0

    move/from16 v22, v2

    goto :goto_1a

    :cond_1e
    if-nez v9, :cond_1f

    const/4 v0, 0x0

    goto :goto_18

    :cond_1f
    add-int/lit8 v0, v9, -0x1

    aget v0, v37, v0

    :goto_18
    move/from16 v22, v2

    :goto_19
    aget v2, v37, v9

    if-ge v0, v2, :cond_20

    invoke-virtual {v3, v0}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v2

    add-float v20, v20, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_20
    :goto_1a
    aget-boolean v0, v48, v9

    or-int/2addr v10, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v22

    goto :goto_17

    :cond_21
    move/from16 v22, v2

    add-int/lit8 v5, v5, -0x1

    aget v0, v37, v5

    aput v0, v37, v7

    aput v20, v44, v7

    aput-boolean v10, v48, v7

    move/from16 v0, v22

    goto :goto_1b

    :cond_22
    move v0, v5

    :goto_1b
    move-object/from16 v20, v3

    move v7, v12

    move/from16 v52, v7

    move/from16 v3, v19

    move/from16 v2, v32

    move/from16 v5, v33

    move/from16 v9, v34

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v51, 0x0

    :goto_1c
    if-ge v7, v1, :cond_35

    add-int/lit8 v53, v10, 0x1

    aget v10, v46, v10

    mul-int/lit8 v54, v51, 0x4

    move/from16 v55, v1

    aget v1, v47, v54

    iput v1, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/lit8 v1, v54, 0x1

    aget v1, v47, v1

    iput v1, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/lit8 v1, v54, 0x2

    aget v1, v47, v1

    iput v1, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 v54, v54, 0x3

    aget v1, v47, v54

    iput v1, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/16 v26, 0x1

    add-int/lit8 v51, v51, 0x1

    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v1, v2, :cond_23

    iget v2, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_23
    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v1, v5, :cond_24

    iget v5, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_24
    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v1, v9, :cond_25

    iget v9, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_25
    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v1, v3, :cond_26

    iget v3, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_26
    move/from16 v1, v22

    :goto_1d
    if-ge v1, v0, :cond_27

    aget v22, v37, v1

    move/from16 v54, v1

    add-int v1, v12, v22

    if-ge v1, v7, :cond_28

    add-int/lit8 v1, v54, 0x1

    goto :goto_1d

    :cond_27
    move/from16 v54, v1

    :cond_28
    move/from16 v1, v54

    :goto_1e
    if-ge v1, v0, :cond_34

    aget v7, v37, v1

    move/from16 v54, v0

    add-int v0, v12, v7

    if-gt v0, v10, :cond_33

    add-int/2addr v7, v12

    move/from16 v0, v29

    if-ge v7, v4, :cond_29

    move/from16 v29, v26

    goto :goto_1f

    :cond_29
    const/16 v29, 0x0

    :goto_1f
    if-eqz v30, :cond_2a

    aget v22, v45, v1

    move/from16 v56, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_20

    :cond_2a
    move/from16 v56, v0

    :goto_20
    if-eqz v30, :cond_2b

    aget v0, v38, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_2b
    if-eqz v30, :cond_2d

    if-ge v5, v2, :cond_2c

    move v2, v5

    :cond_2c
    if-le v9, v3, :cond_2d

    move v3, v9

    :cond_2d
    if-nez v1, :cond_2e

    if-eq v6, v11, :cond_2e

    sub-int v0, v11, v6

    :goto_21
    int-to-float v0, v0

    sub-float v0, v25, v0

    goto :goto_22

    :cond_2e
    if-eqz v1, :cond_2f

    if-eq v8, v11, :cond_2f

    sub-int v0, v11, v8

    goto :goto_21

    :cond_2f
    move/from16 v0, v25

    :goto_22
    cmpg-float v22, v0, v31

    if-gez v22, :cond_30

    move/from16 v0, v25

    move/from16 v22, v0

    goto :goto_23

    :cond_30
    move/from16 v22, v25

    :goto_23
    move-object/from16 v25, v15

    aget-boolean v15, v48, v1

    move/from16 v57, v10

    move/from16 v10, v17

    move/from16 v17, v16

    aget v16, v49, v1

    move-object/from16 v58, v27

    aget v27, v44, v1

    move/from16 v35, v26

    move/from16 v26, v0

    move/from16 v0, v57

    move/from16 v57, v35

    move/from16 v35, v8

    move v8, v3

    move/from16 v3, v52

    move/from16 v52, v35

    move/from16 v35, v11

    move v11, v13

    move/from16 v62, v19

    move-object/from16 v60, v42

    move-object/from16 v13, v43

    move/from16 v61, v55

    move/from16 v59, v56

    const/16 v56, 0x0

    move/from16 v55, v1

    move/from16 v19, v4

    move/from16 v43, v6

    move v4, v7

    move v6, v9

    move/from16 v9, v24

    move/from16 v42, v39

    move-object/from16 v1, p0

    move v7, v2

    move/from16 v24, v12

    move-object/from16 v39, v36

    move-object/from16 v12, v40

    move-object/from16 v2, p1

    move-object/from16 v40, v18

    move-object/from16 v18, v20

    move/from16 v36, v22

    move/from16 v20, p2

    move/from16 v22, v21

    move/from16 v21, p3

    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v3

    move-object v6, v2

    move-object v15, v12

    move/from16 v7, v19

    move/from16 v21, v22

    move/from16 v12, v24

    move-object/from16 v8, v28

    if-ge v4, v0, :cond_31

    iget v2, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v5, v32

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v62

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 p1, v2

    iget v2, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v19, v3

    move/from16 v3, v33

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v20, v2

    iget v2, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v4

    move/from16 v4, v34

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v24, v2

    move/from16 v2, p1

    goto :goto_24

    :cond_31
    move/from16 v16, v0

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v5, v32

    move/from16 v3, v33

    move/from16 v4, v34

    move/from16 v0, v62

    move/from16 v2, v56

    move v9, v2

    move/from16 v20, v9

    move/from16 v24, v20

    :goto_24
    add-int/lit8 v26, v55, 0x1

    move/from16 p1, v2

    iget v2, v1, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v32, v5

    iget v5, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v2, v5, :cond_32

    iget-boolean v2, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_32

    goto/16 :goto_28

    :cond_32
    move/from16 v1, v17

    move/from16 v17, v10

    move/from16 v10, v16

    move/from16 v16, v1

    move/from16 v2, p1

    move/from16 v33, v3

    move/from16 v34, v4

    move-object/from16 p1, v6

    move v4, v7

    move-object/from16 v28, v8

    move v3, v9

    move/from16 v5, v20

    move/from16 v9, v24

    move/from16 v1, v26

    move/from16 v6, v43

    move/from16 v8, v52

    move/from16 v26, v57

    move-object/from16 v27, v58

    move/from16 v29, v59

    move/from16 v55, v61

    move-object/from16 v43, v13

    move-object/from16 v20, v18

    move/from16 v24, v19

    move/from16 v52, v22

    move-object/from16 v18, v40

    move/from16 v19, v0

    move v13, v11

    move-object/from16 v40, v15

    move-object/from16 v15, v25

    move/from16 v11, v35

    move/from16 v25, v36

    move-object/from16 v36, v39

    move/from16 v39, v42

    move/from16 v0, v54

    move-object/from16 v42, v60

    goto/16 :goto_1e

    :cond_33
    move/from16 v0, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v0

    goto :goto_25

    :cond_34
    move/from16 v7, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v7

    move/from16 v54, v0

    :goto_25
    move v7, v4

    move/from16 v35, v11

    move v11, v13

    move/from16 v0, v19

    move/from16 v57, v26

    move-object/from16 v58, v27

    move/from16 v59, v29

    move/from16 v4, v34

    move-object/from16 v60, v42

    move-object/from16 v13, v43

    move/from16 v22, v52

    move/from16 v61, v55

    const/16 v56, 0x0

    move/from16 v55, v1

    move/from16 v19, v2

    move/from16 v43, v6

    move/from16 v52, v8

    move-object/from16 v8, v28

    move/from16 v2, v32

    move/from16 v42, v39

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v39, v36

    move/from16 v36, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v40

    move-object/from16 v40, v18

    move-object/from16 v18, v20

    move/from16 v20, v3

    move/from16 v3, v33

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v4

    move-object/from16 p1, v6

    move v4, v7

    move-object/from16 v28, v8

    move/from16 v7, v16

    move/from16 v16, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v6, v43

    move/from16 v8, v52

    move-object/from16 v27, v58

    move/from16 v29, v59

    move/from16 v1, v61

    move/from16 v19, v0

    move/from16 v17, v10

    move-object/from16 v43, v13

    move-object/from16 v20, v18

    move/from16 v52, v22

    move-object/from16 v18, v40

    move/from16 v10, v53

    move/from16 v0, v54

    move/from16 v22, v55

    move v13, v11

    move-object/from16 v40, v15

    move-object/from16 v15, v25

    move/from16 v11, v35

    move/from16 v25, v36

    move-object/from16 v36, v39

    move/from16 v39, v42

    move-object/from16 v42, v60

    goto/16 :goto_1c

    :cond_35
    move-object/from16 v6, p1

    move v5, v1

    move v7, v4

    move/from16 v35, v11

    move v11, v13

    move/from16 v10, v17

    move-object/from16 v40, v18

    move/from16 v0, v19

    move-object/from16 v58, v27

    move-object/from16 v8, v28

    move/from16 v59, v29

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v60, v42

    move-object/from16 v13, v43

    const/16 v56, 0x0

    const/16 v57, 0x1

    move-object/from16 v1, p0

    move/from16 v17, v16

    move/from16 v42, v39

    move-object/from16 v39, v36

    move/from16 v36, v25

    move-object/from16 v25, v15

    if-ne v5, v7, :cond_36

    goto/16 :goto_26

    :cond_36
    add-int/lit8 v5, v42, 0x1

    move/from16 v19, v0

    move-object v0, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v4

    move-object v1, v6

    move v4, v7

    move-object/from16 v28, v8

    move/from16 v16, v17

    move-object/from16 v15, v25

    move/from16 v25, v36

    move-object/from16 v6, v37

    move-object/from16 v18, v38

    move-object/from16 v36, v40

    move-object/from16 v37, v41

    move-object/from16 v9, v44

    move-object/from16 v20, v48

    move-object/from16 v22, v49

    move/from16 v38, v50

    move-object/from16 v2, v58

    move/from16 v3, v59

    move-object/from16 v8, v60

    move v7, v5

    move/from16 v17, v10

    move-object v5, v13

    move-object/from16 v10, v45

    move v13, v11

    move/from16 v11, v35

    move-object/from16 v35, v39

    goto/16 :goto_c

    :cond_37
    move-object v6, v1

    move/from16 v59, v3

    move v7, v4

    move-object/from16 v60, v8

    move v11, v13

    move/from16 v10, v17

    move/from16 v36, v25

    move-object/from16 v8, v28

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    move-object v1, v0

    move-object/from16 v25, v15

    move/from16 v17, v16

    move/from16 v0, v19

    :goto_26
    move/from16 v5, v59

    if-eq v7, v5, :cond_38

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v12, 0xa

    if-ne v9, v12, :cond_3a

    :cond_38
    iget v9, v1, Landroid/text/StaticLayout;->mLineCount:I

    iget v12, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v12, :cond_3a

    move-object/from16 v9, v60

    const/4 v12, 0x0

    invoke-static {v6, v7, v7, v9, v12}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v9

    if-eqz v3, :cond_39

    if-eqz v4, :cond_39

    iput v2, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v3, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_27

    :cond_39
    invoke-virtual {v8, v14}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :goto_27
    iget v4, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v3, v5

    iget v5, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object v2, v6

    iget v6, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v7

    iget v7, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v26, 0x0

    const/16 v28, 0x0

    move/from16 v16, v17

    move-object/from16 v17, v9

    move v9, v10

    move v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    move/from16 v23, v3

    move/from16 v3, v19

    move/from16 v18, v19

    move/from16 v20, p3

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v27, v8

    move/from16 v2, v19

    move/from16 v8, v24

    move-object/from16 v24, v25

    move/from16 v25, v36

    move/from16 v19, p2

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    :cond_3a
    :goto_28
    return-void
.end method

.method public whitelist getBottomPadding()I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return p0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x6

    aget p0, p0, v0

    return p0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    aget p0, p0, v0

    return p0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-p getHeight(Z)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    const-string v2, "StaticLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le p1, v1, :cond_1

    iget p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq p1, v0, :cond_1

    return p1

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez p0, :cond_0

    return v1

    :cond_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez p0, :cond_2

    return v1

    :cond_2
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    neg-int p0, p0

    return p0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz p2, :cond_4

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget p2, p2, v0

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz p0, :cond_5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget v1, p0, p1

    :cond_5
    sub-int/2addr p2, v1

    shr-int/lit8 p0, p2, 0x1

    return p0

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unhandled alignment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    aget p0, v0, p0

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getLineCount()I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return p0
.end method

.method public whitelist getLineDescent(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x3

    aget p0, v0, p0

    return p0
.end method

.method public whitelist getLineForVertical(I)I
    .locals 6

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v2

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v1, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public whitelist getLineStart(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    aget p0, v0, p0

    const p1, 0x1fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public whitelist getLineTop(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result p0

    return p0
.end method

.method public whitelist getTopPadding()I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return p0
.end method
