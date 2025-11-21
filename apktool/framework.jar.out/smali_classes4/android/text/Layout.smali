.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$CharacterBoundsListener;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$TextInclusionStrategy;,
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$Builder;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final whitelist DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final greylist DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final greylist DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final whitelist DIR_LEFT_TO_RIGHT:I = 0x1

.field static final greylist DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final greylist-max-o DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final greylist-max-o DIR_REQUEST_LTR:I = 0x1

.field static final greylist-max-o DIR_REQUEST_RTL:I = -0x1

.field public static final whitelist DIR_RIGHT_TO_LEFT:I = -0x1

.field private static final blacklist HIGH_CONTRAST_LAB_THRESHOLD_AOSP:F = 50.0f

.field private static final blacklist HIGH_CONTRAST_LAB_THRESHOLD_SEC:F = 60.75f

.field private static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_ALPHA_PERCENTAGE:F = 0.7f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_FACTOR:F = 0.5f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_MIN_DP:F = 5.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_FACTOR:F = 0.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_MIN_PX:F = 0.0f

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

.field public static final whitelist INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final greylist-max-o NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final greylist-max-o RUN_LENGTH_MASK:I = 0x3ffffff

.field static final greylist-max-o RUN_LEVEL_MASK:I = 0x3f

.field static final greylist-max-o RUN_LEVEL_SHIFT:I = 0x1a

.field static final greylist-max-o RUN_RTL_FLAG:I = 0x4000000

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final greylist-max-o sTempRect:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mLineInfo:Landroid/text/TextLine$LineInfo;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private blacklist mSpanColors:Landroid/text/SpanColors;

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;

.field private final blacklist mWorkPlainPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 22

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-ltz p3, :cond_2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iput-boolean p8, p0, Landroid/text/Layout;->mIncludePad:Z

    iput-boolean p9, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    if-nez p11, :cond_1

    goto :goto_0

    :cond_1
    move p3, p10

    :goto_0
    iput p3, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    iput-object p11, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput p12, p0, Landroid/text/Layout;->mMaxLines:I

    iput p13, p0, Landroid/text/Layout;->mBreakStrategy:I

    move p1, p14

    iput p1, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    move-object/from16 p1, p15

    iput-object p1, p0, Landroid/text/Layout;->mLeftIndents:[I

    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/text/Layout;->mRightIndents:[I

    move/from16 p1, p17

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Layout: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v8

    add-int/2addr v9, v4

    iget-object v10, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    const v12, 0x3ffffff

    and-int/2addr v10, v12

    add-int/2addr v10, v9

    if-le v10, v5, :cond_1

    move v10, v5

    :cond_1
    if-gt v2, v10, :cond_3

    if-lt v3, v9, :cond_3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eq v9, v10, :cond_3

    invoke-direct {v0, v9, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v9

    const/4 v12, 0x1

    invoke-direct {v0, v10, v12, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v11

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    move/from16 v18, v7

    goto :goto_1

    :cond_2
    move/from16 v18, v12

    :goto_1
    move/from16 v9, p4

    int-to-float v15, v9

    move/from16 v10, p5

    int-to-float v11, v10

    move-object/from16 v13, p6

    move/from16 v17, v11

    invoke-interface/range {v13 .. v18}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_3
    move/from16 v9, p4

    move/from16 v10, p5

    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_4
    return-void
.end method

.method private blacklist determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;
    .locals 0

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method private blacklist drawHighContrastBackground(Landroid/graphics/Canvas;II)V
    .locals 14

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    iget-object v3, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v1, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v7

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    invoke-direct {p0, v2}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v9, p2

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move/from16 v11, p3

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v13, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v1, v5, v13, v10, v12}, Landroid/text/SpanColors;->init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V

    :cond_4
    new-instance v5, Landroid/text/Layout$1;

    move-object v1, p0

    move-object v0, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/text/Layout$1;-><init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V

    move-object v5, v0

    move-object v0, v1

    move v3, v9

    move v1, v10

    move v4, v11

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    :cond_5
    :goto_1
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 5

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    invoke-static {p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p6

    const/4 v2, 0x0

    if-lt v0, p6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    sub-int v4, p1, v1

    sub-int/2addr v4, p0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p2, v1

    sub-int/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge v2, p2, :cond_3

    if-eqz v3, :cond_2

    if-ge v2, p6, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_2
    const v0, 0xfeff

    :goto_2
    add-int v4, v2, v1

    add-int/2addr v4, p0

    add-int/2addr v4, p5

    sub-int/2addr v4, p1

    aput-char v0, p4, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method private blacklist fillHorizontalBoundsForLine(I[F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    sub-int v14, v6, v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    const/4 v15, 0x0

    if-eqz v9, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v5, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object v10, v15

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    if-eqz v1, :cond_2

    array-length v0, v1

    mul-int/lit8 v3, v14, 0x2

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    mul-int/lit8 v14, v14, 0x2

    new-array v0, v14, [F

    :goto_2
    invoke-virtual {v2, v0, v15}, Landroid/text/TextLine;->measureAllBounds([F[F)V

    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method private blacklist forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v4, p3

    move/from16 v9, p4

    :goto_0
    if-gt v4, v9, :cond_3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    sub-int v3, v2, v10

    if-eqz v1, :cond_0

    array-length v5, v1

    mul-int/lit8 v6, v3, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [F

    :cond_1
    invoke-direct {v0, v4, v1}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    invoke-direct {v0, v4, v3, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v11

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move/from16 v14, p1

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v15, p2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_2

    sub-int v5, v3, v10

    mul-int/lit8 v5, v5, 0x2

    aget v6, v1, v5

    int-to-float v7, v11

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    add-float/2addr v7, v5

    move v5, v6

    int-to-float v6, v12

    int-to-float v8, v13

    move/from16 v16, v2

    move-object/from16 v2, p5

    invoke-interface/range {v2 .. v8}, Landroid/text/Layout$CharacterBoundsListener;->onCharacterBounds(IIFFFF)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface/range {p5 .. p5}, Landroid/text/Layout$CharacterBoundsListener;->onEnd()V

    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 7

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F

    move-result p0

    return p0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method public static blacklist getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F
    .locals 7

    invoke-virtual {p3, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    move v3, p1

    :goto_0
    if-gt v3, p2, :cond_3

    const/16 p1, 0xa

    invoke-static {p0, p1, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    if-gez p1, :cond_0

    move v4, p2

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    move-object v2, p0

    move-object v1, p3

    move-object v5, p4

    move v6, p6

    invoke-static/range {v1 .. v6}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F

    move-result p0

    move p1, v4

    cmpl-float p3, p0, p5

    if-lez p3, :cond_1

    return p5

    :cond_1
    cmpl-float p3, p0, v0

    if-lez p3, :cond_2

    move v0, p0

    :cond_2
    add-int/lit8 v3, p1, 0x1

    move-object p3, v1

    move-object p0, v2

    move-object p4, v5

    move p6, v6

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static blacklist getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 8

    move-object/from16 v0, p11

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p9, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_12

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p8, v1

    if-lez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-nez p10, :cond_1

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, p9

    if-gez v3, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, p8

    if-gtz v3, :cond_3

    :cond_2
    add-int/lit8 v3, p7, -0x1

    goto :goto_1

    :cond_3
    move v4, p6

    move v3, p7

    :goto_0
    sub-int v5, v3, v4

    if-le v5, v1, :cond_7

    add-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v6, p4

    mul-int/lit8 v7, v5, 0x2

    aget v7, p5, v7

    add-float/2addr v6, v7

    if-nez p10, :cond_4

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    if-eqz p10, :cond_8

    goto :goto_1

    :cond_8
    move v3, v4

    :goto_1
    add-int/2addr v3, p3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    if-ne v3, v2, :cond_9

    return v2

    :cond_9
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v4

    add-int v5, p3, p6

    if-gt v4, v5, :cond_a

    return v2

    :cond_a
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v6, p3, p7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v6, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, v7, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_2
    int-to-float p1, p4

    sub-int p2, v4, p3

    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x2

    xor-int/lit8 v7, p10, 0x1

    add-int/2addr p2, v7

    aget p2, p5, p2

    add-float/2addr p2, p1

    if-nez p10, :cond_b

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, p2, v7

    if-lez v7, :cond_d

    :cond_c
    return v2

    :cond_d
    sub-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x2

    add-int v3, v3, p10

    aget v3, p5, v3

    add-float/2addr p1, v3

    if-eqz p10, :cond_e

    move v3, p2

    goto :goto_3

    :cond_e
    move v3, p1

    :goto_3
    iput v3, v6, Landroid/graphics/RectF;->left:F

    if-eqz p10, :cond_f

    move p2, p1

    :cond_f
    iput p2, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 p1, p12

    invoke-interface {p1, v6, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_10

    return v4

    :cond_10
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v4

    if-eq v4, v2, :cond_12

    if-gt v4, v5, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p2

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_12
    :goto_4
    return v2
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    return p0
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    if-eqz v9, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v5, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v10, v3

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    sub-int v12, p1, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v13, p2

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    int-to-float v2, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    return v0
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result p0

    return p0
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .locals 12

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v8, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v5

    :goto_1
    if-eqz v8, :cond_3

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-interface {v4, v7, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-static {v4, v7, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    array-length v7, v3

    sub-int/2addr v7, v5

    :goto_2
    if-ltz v7, :cond_3

    aget-object v9, v3, v7

    instance-of v10, v9, Landroid/text/style/AlignmentSpan;

    if-eqz v10, :cond_2

    check-cast v9, Landroid/text/style/AlignmentSpan;

    invoke-interface {v9}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    array-length v7, v3

    move v9, v6

    :goto_4
    if-ge v9, v7, :cond_5

    aget-object v10, v3, v9

    instance-of v11, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_4

    check-cast v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v10

    aget-object v11, v3, v9

    invoke-interface {v4, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    add-int/2addr v11, v10

    if-ge p1, v11, :cond_4

    move v8, v5

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    move v4, v6

    :goto_6
    if-ge v6, v7, :cond_8

    aget-object v9, v3, v6

    instance-of v10, v9, Landroid/text/style/LeadingMarginSpan;

    if-eqz v10, :cond_7

    check-cast v9, Landroid/text/style/LeadingMarginSpan;

    const/4 v10, -0x1

    if-ne v2, v10, :cond_6

    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int/2addr v1, v9

    goto :goto_7

    :cond_6
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v4, v9

    :cond_7
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    move v6, v4

    :cond_9
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_b

    if-ne v2, v5, :cond_a

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_b
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_d

    if-ne v2, v5, :cond_c

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_d
    :goto_8
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_f

    if-ne v2, v5, :cond_e

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_a

    :cond_e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    :goto_9
    neg-int p0, p0

    goto :goto_a

    :cond_f
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_11

    if-ne v2, v5, :cond_10

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_9

    :cond_10
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_a

    :cond_11
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    :goto_a
    sub-int/2addr v1, v6

    sub-int/2addr v1, p0

    int-to-float p0, v1

    return p0
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p3

    :goto_0
    move v4, p3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object p3, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    add-int v10, p3, v8

    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    move-object v8, p2

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/text/TextLine;->justify(IF)V

    :cond_1
    iget-boolean p0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p0, p1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p0

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p0
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p2

    :goto_0
    move v4, p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 p2, 0x0

    if-eqz v7, :cond_1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Landroid/text/Layout$TabStops;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/text/TextLine;->justify(IF)V

    :cond_3
    iget-boolean p0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    invoke-virtual {v0, p2, p2, p0, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p0

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p0
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .locals 13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    const/4 v12, 0x0

    if-eqz v7, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Landroid/text/Layout$TabStops;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v12

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move v5, v2

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget-boolean v6, v1, v5

    xor-int/lit8 v6, v6, 0x1

    aput-boolean v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, v12}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_3

    move v0, v2

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    aget v5, v1, v0

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v7, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    int-to-float v5, v6

    aput v5, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    invoke-direct {p0, p1, v0, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result p0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array p1, v4, [F

    :goto_3
    if-ge v2, v4, :cond_4

    int-to-float v0, p0

    aget v3, v1, v2

    add-float/2addr v0, v3

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method private greylist-max-o getLineStartPos(III)I
    .locals 7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    if-ne v1, v3, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_3
    :goto_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    if-ne v1, v3, :cond_4

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    :goto_1
    add-int/2addr p2, p0

    return p2

    :cond_4
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    :goto_2
    add-int/2addr p3, p0

    return p3

    :cond_5
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v4, v2

    if-lez v4, :cond_6

    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, v4, v2}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v2

    float-to-int v2, v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_8

    if-ne v1, v3, :cond_7

    sub-int/2addr p3, v2

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_2

    :cond_7
    sub-int/2addr p2, v2

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_1

    :cond_8
    and-int/lit8 v0, v2, -0x2

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int/2addr p0, v3

    shr-int p0, p2, p0

    return p0
.end method

.method private blacklist getLineVisibleEnd(IIIZ)I
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    add-int/lit8 p0, p3, -0x1

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p4, 0xa

    if-ne p1, p4, :cond_1

    return p0

    :cond_1
    invoke-static {p1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_1

    const v3, 0xdfff

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz p0, :cond_3

    check-cast v1, Landroid/text/Spanned;

    const-class p0, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, p0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ReplacementSpan;

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    move p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 13

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-ne p2, v4, :cond_1

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_3

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    move v5, v6

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-eq v4, v3, :cond_4

    xor-int/lit8 p2, p2, 0x1

    move v5, v2

    move v6, v4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v1

    move v5, v2

    move v6, v3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v8

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    add-int v11, v8, v0

    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result p0

    add-int/2addr v4, p0

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v4
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .locals 8

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    array-length v4, v3

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    move v5, v1

    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_6

    aget-object v6, v3, v5

    instance-of v7, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v7, :cond_5

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    aget-object v7, v3, v5

    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v7

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    or-int/2addr v2, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move p0, v1

    :goto_4
    array-length p1, v3

    if-ge v1, p1, :cond_7

    aget-object p1, v3, v1

    invoke-interface {p1, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return p0
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 8

    move-object/from16 v0, p11

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p9, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_12

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p8, v1

    if-lez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    if-nez p10, :cond_1

    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, p8

    if-lez v3, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, p9

    if-ltz v3, :cond_3

    :cond_2
    move v3, p6

    goto :goto_1

    :cond_3
    move v4, p6

    move v3, p7

    :goto_0
    sub-int v5, v3, v4

    if-le v5, v1, :cond_7

    add-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v6, p4

    mul-int/lit8 v7, v5, 0x2

    aget v7, p5, v7

    add-float/2addr v6, v7

    if-nez p10, :cond_4

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    if-eqz p10, :cond_8

    goto :goto_1

    :cond_8
    move v3, v4

    :goto_1
    add-int/2addr v3, p3

    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    if-ne v3, v2, :cond_9

    return v2

    :cond_9
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v4

    add-int v5, p3, p7

    if-lt v4, v5, :cond_a

    return v2

    :cond_a
    add-int v6, p3, p6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v6, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, v7, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_2
    int-to-float p1, p4

    sub-int p2, v4, p3

    mul-int/lit8 p2, p2, 0x2

    add-int p2, p2, p10

    aget p2, p5, p2

    add-float/2addr p2, p1

    if-nez p10, :cond_b

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, p2, v7

    if-gtz v7, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, p2, v7

    if-gez v7, :cond_d

    :cond_c
    return v2

    :cond_d
    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    xor-int/lit8 v7, p10, 0x1

    add-int/2addr v3, v7

    aget v3, p5, v3

    add-float/2addr p1, v3

    if-eqz p10, :cond_e

    move v3, p1

    goto :goto_3

    :cond_e
    move v3, p2

    :goto_3
    iput v3, v6, Landroid/graphics/RectF;->left:F

    if-eqz p10, :cond_f

    goto :goto_4

    :cond_f
    move p2, p1

    :goto_4
    iput p2, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 p1, p12

    invoke-interface {p1, v6, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_10

    return v4

    :cond_10
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v4

    if-eq v4, v2, :cond_12

    if-lt v4, v5, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_12
    :goto_5
    return v2
.end method

.method private blacklist getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    move v5, v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    const/4 v13, -0x1

    if-ne v3, v6, :cond_0

    return v13

    :cond_0
    sub-int v14, v6, v3

    mul-int/lit8 v6, v14, 0x2

    new-array v6, v6, [F

    invoke-direct {v0, v1, v6}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    const/16 v16, 0x1

    if-eqz p5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v15}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eqz p5, :cond_3

    invoke-virtual {v15}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    if-nez p5, :cond_9

    if-ltz v0, :cond_9

    goto :goto_1

    :goto_3
    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v6

    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v10

    int-to-float v8, v7

    if-eqz v10, :cond_4

    add-int/lit8 v9, v1, -0x1

    mul-int/lit8 v9, v9, 0x2

    aget v9, v5, v9

    goto :goto_4

    :cond_4
    mul-int/lit8 v9, v6, 0x2

    aget v9, v5, v9

    :goto_4
    add-float/2addr v9, v8

    if-eqz v10, :cond_5

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v1, -0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    :goto_5
    add-float/2addr v8, v11

    if-eqz p5, :cond_6

    move v11, v7

    move v7, v1

    move v1, v4

    move v4, v11

    move v11, v9

    move v9, v8

    move v8, v11

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v17, v0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v12}, Landroid/text/Layout;->getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    goto :goto_6

    :cond_6
    move v11, v7

    move v7, v1

    move v1, v4

    move v4, v11

    move v11, v9

    move v9, v8

    move v8, v11

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v17, v0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v12}, Landroid/text/Layout;->getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    :goto_6
    if-ltz v6, :cond_7

    return v6

    :cond_7
    if-eqz p5, :cond_8

    move/from16 v0, v16

    goto :goto_7

    :cond_8
    move v0, v13

    :goto_7
    add-int v0, v17, v0

    move v7, v4

    move-object v6, v5

    move v4, v1

    goto :goto_0

    :cond_9
    return v13
.end method

.method private blacklist initSpanColors()V
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpanColors;

    invoke-direct {v0}, Landroid/text/SpanColors;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-void
.end method

.method private blacklist isHighContrastTextDark(I)Z
    .locals 4

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->GRAPHICS_RENDERER_HCF:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42730000    # 60.75f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42480000    # 50.0f

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    const/4 p1, 0x0

    aget-wide v0, v0, p1

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .locals 2

    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic blacklist lambda$addSelectionPath$4(Landroid/graphics/Path;FFFFI)V
    .locals 6

    const/high16 p5, 0x3f800000    # 1.0f

    add-float v2, p2, p5

    sub-float v4, p4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$fillCharacterBounds$2(II[FIIFFFF)V
    .locals 0

    sub-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p0, p3

    aput p5, p2, p0

    add-int/lit8 p1, p0, 0x1

    aput p6, p2, p1

    add-int/lit8 p1, p0, 0x2

    aput p7, p2, p1

    add-int/lit8 p0, p0, 0x3

    aput p8, p2, p0

    return-void
.end method

.method static synthetic blacklist lambda$getSelectionPath$3(Landroid/graphics/Path;FFFFI)V
    .locals 0

    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method private static blacklist measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F
    .locals 16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    const/4 v13, 0x0

    move-object/from16 v0, p4

    :try_start_0
    invoke-static {v3, v4, v5, v0, v13}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    array-length v2, v0

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v2}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    move v8, v6

    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    instance-of v9, v3, Landroid/text/Spanned;

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    move-object v9, v3

    check-cast v9, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v4, v5, v11}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/LeadingMarginSpan;

    array-length v11, v9

    move v12, v8

    move v15, v12

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v8, v9, v12

    invoke-interface {v8, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v8

    add-int/2addr v15, v8

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_5

    aget-char v9, v0, v8

    const/16 v11, 0x9

    if-ne v9, v11, :cond_4

    instance-of v0, v3, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    move-object v0, v3

    check-cast v0, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v4, v5, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    const-class v8, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v4, v2, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    array-length v2, v0

    if-lez v2, :cond_2

    new-instance v2, Landroid/text/Layout$TabStops;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v2, v8, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v2, v13

    :goto_2
    move-object v9, v2

    move v8, v10

    goto :goto_3

    :cond_3
    move v8, v10

    move-object v9, v13

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move-object v9, v13

    const/4 v8, 0x0

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    int-to-float v0, v15

    move/from16 v2, p5

    invoke-virtual {v1, v13, v13, v2, v13}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float/2addr v0, v2

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_6
    return v0

    :catchall_0
    move-exception v0

    move-object v13, v14

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_7
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 3

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    check-cast p0, Landroid/text/Spanned;

    const-class p4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, p4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    move p2, p1

    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_3

    if-nez p0, :cond_1

    aget-object v1, p4, v0

    instance-of v1, v1, Landroid/text/style/TabStopSpan;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, p4, v0

    check-cast v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_2

    cmpl-float v2, v1, p3

    if-lez v2, :cond_2

    move p2, v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmpl-float p0, p2, p1

    if-eqz p0, :cond_4

    return p2

    :cond_4
    const/high16 p0, 0x41a00000    # 20.0f

    add-float/2addr p3, p0

    div-float/2addr p3, p0

    float-to-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1
.end method

.method private static blacklist setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    const/16 p0, -0x100

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p2
.end method

.method private static blacklist shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z
    .locals 1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :cond_0
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v15, v4

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v6, v4

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v11, v10, Landroid/text/Spanned;

    if-eqz v11, :cond_0

    check-cast v10, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/TabStopSpan;

    invoke-static {v10, v4, v7, v11}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/TabStopSpan;

    array-length v11, v10

    if-lez v11, :cond_0

    new-instance v11, Landroid/text/Layout$TabStops;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-direct {v11, v12, v10}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move v10, v7

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    if-nez v7, :cond_1

    move v14, v5

    move v4, v6

    move v5, v2

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1
    move v12, v6

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    move/from16 v16, v2

    iget-object v2, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v9, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    move v9, v3

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move/from16 v17, v10

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v19, v12

    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    move v14, v5

    move/from16 v21, v9

    move-object v9, v11

    move/from16 v20, v16

    move/from16 v5, v17

    move/from16 v11, v18

    move/from16 v22, v19

    move/from16 v16, v15

    const/4 v15, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct {v0, v14}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {v0, v14}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/TextLine;->justify(IF)V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v15, v13, v2, v15}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v13, Landroid/graphics/RectF;->right:F

    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    :cond_3
    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v7, v16

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v9, v21

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move/from16 v8, v20

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v12, v22

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_2
    move v15, v3

    move v3, v4

    move v4, v6

    :goto_3
    add-int/lit8 v6, v14, 0x1

    move v2, v5

    move v5, v6

    goto/16 :goto_0

    :cond_5
    move v8, v2

    move v9, v3

    move v12, v4

    move v7, v15

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v8, v9, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    if-gez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    :goto_1
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    :cond_3
    cmpl-float v0, v10, v9

    if-eqz v0, :cond_4

    neg-float v0, v10

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    :goto_2
    return-void
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V

    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v2

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v15, 0x0

    invoke-virtual {v3, v11, v15, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_7

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    sget-object v5, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    move-object v6, v5

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Landroid/text/Layout;->mWidth:I

    move v14, v1

    move v8, v3

    move v12, v4

    move v3, v15

    move v4, v3

    :goto_0
    move/from16 v1, p3

    if-gt v14, v1, :cond_7

    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v16

    sub-int v16, v10, v16

    if-lt v13, v3, :cond_5

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3, v12, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    if-ne v12, v13, :cond_2

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_4

    :cond_2
    :goto_1
    move v4, v15

    :goto_2
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v15, v1, :cond_5

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v15

    if-ge v1, v13, :cond_4

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v15

    if-gt v1, v12, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v15

    invoke-static {v6, v4, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v4, v4, 0x1

    move-object v6, v1

    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    move v1, v3

    move v15, v4

    :goto_4
    move-object/from16 v17, v6

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v15, :cond_6

    aget-object v4, v17, v3

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v16, v9

    move/from16 v9, v18

    move/from16 v18, v3

    move-object v3, v4

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v3, v18, 0x1

    move/from16 v19, v16

    move/from16 v16, v9

    move/from16 v9, v19

    goto :goto_5

    :cond_6
    move/from16 v16, v9

    move v3, v1

    move v8, v10

    move v12, v13

    move v4, v15

    move/from16 v14, v16

    move-object/from16 v6, v17

    const/4 v15, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    :cond_8
    return-void
.end method

.method public blacklist drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p7, 0x0

    if-eqz p6, :cond_1

    int-to-float p8, p6

    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;

    move-result-object p8

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {v2, p8, v3}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The highlight path size is different from the size of highlight paints"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "if highlight is specified, highlightPaint must be specified."

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz p4, :cond_8

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {p5, p8, p0}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p5

    :cond_7
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz p6, :cond_9

    neg-int p0, p6

    int-to-float p0, p0

    invoke-virtual {p1, p7, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz p6, :cond_a

    neg-int p2, p6

    int-to-float p2, p2

    invoke-virtual {p1, p7, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a
    throw p0
.end method

.method public whitelist drawText(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .locals 33

    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    iget-object v15, v12, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v3, v12, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v8, v12, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v3, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v0

    move-object v0, v6

    move v9, v1

    move v7, v4

    move v10, v7

    move v6, v13

    :goto_0
    move/from16 v1, p3

    if-gt v6, v1, :cond_18

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v16, v14

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-direct {v12, v6}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v26

    move-object/from16 v17, v0

    const/4 v0, 0x1

    invoke-direct {v12, v6, v9, v14, v0}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v18

    move/from16 v19, v0

    invoke-virtual {v12, v6}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v12, v6}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    invoke-virtual {v12, v6}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    sub-int v20, v21, v0

    move v0, v4

    invoke-virtual {v12, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    iget v0, v12, Landroid/text/Layout;->mWidth:I

    move/from16 v23, v0

    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_b

    move-object v0, v8

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v9, :cond_1

    move-object/from16 v24, v2

    add-int/lit8 v2, v9, -0x1

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object/from16 v25, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v11

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_1
    move v2, v11

    move/from16 v11, v19

    :goto_2
    if-lt v9, v7, :cond_5

    if-eq v6, v13, :cond_2

    if-eqz v11, :cond_5

    :cond_2
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v9, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-static {v0, v9, v7, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    iget-object v3, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    :goto_3
    move-object/from16 v24, v1

    if-ltz v10, :cond_4

    aget-object v1, v24, v10

    move/from16 v27, v2

    instance-of v2, v1, Landroid/text/style/AlignmentSpan;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, v24

    move/from16 v2, v27

    goto :goto_3

    :cond_4
    move/from16 v27, v2

    :goto_4
    move-object/from16 v25, v3

    const/16 v28, 0x0

    goto :goto_5

    :cond_5
    move/from16 v27, v2

    move/from16 v28, v10

    :goto_5
    move-object/from16 v1, v24

    move/from16 v24, v7

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_7

    aget-object v7, v1, v3

    instance-of v10, v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_6

    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v7

    aget-object v10, v1, v3

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    add-int/2addr v10, v7

    if-ge v6, v10, :cond_6

    move/from16 v0, v19

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move v0, v11

    :goto_7
    move/from16 v3, v23

    const/4 v7, 0x0

    const/16 v23, 0x0

    :goto_8
    if-ge v7, v2, :cond_a

    aget-object v10, v1, v7

    move/from16 v29, v0

    instance-of v0, v10, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_9

    move-object v0, v10

    check-cast v0, Landroid/text/style/LeadingMarginSpan;

    const/4 v10, -0x1

    if-ne v4, v10, :cond_8

    move v13, v6

    move/from16 v22, v7

    move/from16 v19, v14

    move/from16 v10, v18

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v14, v29

    move/from16 v18, v2

    move-object v2, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v20, v3

    invoke-interface {v0, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v3, v20, v0

    move-object/from16 v12, p0

    move v1, v6

    move v0, v7

    move v6, v10

    goto :goto_a

    :cond_8
    move v13, v6

    move/from16 v22, v7

    move/from16 v19, v14

    move/from16 v10, v18

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v14, v29

    move/from16 v18, v2

    move/from16 v20, v3

    move-object v2, v15

    move-object/from16 v15, v17

    move/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move v1, v6

    move v6, v10

    move-object v10, v0

    move v0, v7

    invoke-interface {v10, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int v23, v3, v7

    goto :goto_9

    :cond_9
    move v13, v6

    move/from16 v22, v7

    move/from16 v19, v14

    move/from16 v6, v18

    move/from16 v0, v21

    move/from16 v14, v29

    move/from16 v18, v2

    move-object v2, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    move/from16 v1, v20

    move/from16 v20, v3

    move/from16 v3, v23

    :goto_9
    move/from16 v3, v20

    :goto_a
    add-int/lit8 v7, v22, 0x1

    move/from16 v21, v0

    move/from16 v20, v1

    move v0, v14

    move-object/from16 v1, v17

    move/from16 v14, v19

    const/16 v19, 0x1

    move-object/from16 v17, v15

    move-object v15, v2

    move/from16 v2, v18

    move/from16 v18, v6

    move v6, v13

    move/from16 v13, p2

    goto/16 :goto_8

    :cond_a
    move/from16 v19, v14

    move-object v2, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    move/from16 v1, v20

    move/from16 v20, v3

    move/from16 v3, v23

    move v7, v3

    move-object/from16 v10, v17

    move/from16 v3, v20

    move/from16 v14, v28

    move/from16 v28, v24

    goto :goto_b

    :cond_b
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v27, v11

    move/from16 v19, v14

    move-object v2, v15

    move-object/from16 v15, v17

    move/from16 v1, v20

    move/from16 v28, v7

    move v14, v10

    move/from16 v3, v23

    move-object/from16 v10, v24

    const/4 v7, 0x0

    :goto_b
    move v13, v6

    move/from16 v6, v18

    move/from16 v0, v21

    move-object/from16 v11, v25

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v21

    if-eqz v21, :cond_d

    if-nez v14, :cond_d

    const/high16 v14, 0x41a00000    # 20.0f

    if-nez v15, :cond_c

    new-instance v15, Landroid/text/Layout$TabStops;

    invoke-direct {v15, v14, v10}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_c

    :cond_c
    invoke-virtual {v15, v14, v10}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    :goto_c
    const/16 v31, 0x1

    goto :goto_d

    :cond_d
    move/from16 v31, v14

    :goto_d
    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v11, v14, :cond_f

    const/4 v14, 0x1

    if-ne v4, v14, :cond_e

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_e

    :cond_e
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_e
    move/from16 v30, v0

    :goto_f
    move-object/from16 v0, v17

    move-object/from16 v17, v2

    goto :goto_11

    :cond_f
    move/from16 v30, v0

    const/4 v14, 0x1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v11, v0, :cond_11

    if-ne v4, v14, :cond_10

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_10
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object/from16 v17, v0

    goto :goto_f

    :cond_11
    move-object/from16 v17, v2

    move-object v0, v11

    :goto_11
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_13

    if-ne v4, v14, :cond_12

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    add-int v2, v7, v0

    goto :goto_13

    :cond_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    neg-int v0, v0

    sub-int v2, v3, v0

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    invoke-direct {v12, v13, v15, v2}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v14

    float-to-int v14, v14

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    if-ne v4, v0, :cond_14

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    neg-int v0, v0

    sub-int v2, v3, v14

    sub-int/2addr v2, v0

    goto :goto_13

    :cond_14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    sub-int v2, v7, v14

    goto :goto_12

    :cond_15
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    and-int/lit8 v2, v14, -0x2

    add-int v14, v3, v7

    sub-int/2addr v14, v2

    const/16 v18, 0x1

    shr-int/lit8 v2, v14, 0x1

    :goto_12
    add-int/2addr v2, v0

    :goto_13
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    move/from16 v32, v0

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v14, v0, :cond_16

    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_16

    if-nez v21, :cond_16

    if-nez v26, :cond_16

    int-to-float v7, v2

    move-object v4, v8

    int-to-float v8, v1

    move-object/from16 v3, p1

    move v5, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v8, v4

    move-object/from16 v22, v15

    move/from16 v0, v19

    move/from16 v7, v30

    move-object v15, v9

    move-object/from16 v14, v16

    goto :goto_14

    :cond_16
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v23

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int v24, v0, v13

    invoke-virtual {v12}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v25

    move/from16 v18, v6

    move-object/from16 v20, v14

    move-object/from16 v22, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v0, v19

    move/from16 v19, v4

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v14 .. v25}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    if-eqz v26, :cond_17

    iget v4, v12, Landroid/text/Layout;->mJustificationMode:I

    sub-int/2addr v3, v7

    sub-int v3, v3, v32

    int-to-float v3, v3

    invoke-virtual {v14, v4, v3}, Landroid/text/TextLine;->justify(IF)V

    :cond_17
    int-to-float v2, v2

    move-object/from16 v17, p1

    move/from16 v20, v1

    move/from16 v18, v2

    move/from16 v19, v5

    move-object/from16 v16, v14

    move/from16 v21, v30

    invoke-virtual/range {v16 .. v21}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    move/from16 v7, v21

    :goto_14
    move/from16 v13, p2

    move v9, v0

    move v5, v7

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v0, v22

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v10, v31

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_18
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public blacklist drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p7, p8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    invoke-virtual/range {p0 .. p8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    return-void
.end method

.method public whitelist fillCharacterBounds(II[FI)V
    .locals 8

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-eqz p3, :cond_2

    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x4

    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    new-instance v7, Landroid/text/Layout$$ExternalSyntheticLambda5;

    invoke-direct {v7, p4, p1, p3}, Landroid/text/Layout$$ExternalSyntheticLambda5;-><init>(II[F)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bounds doesn\'t have enough space to store the result, needed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " had: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    sub-int/2addr p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bounds can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object v2, p0

    move v3, p1

    move v4, p2

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "given range: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is out of the text range: 0, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public final whitelist getBreakStrategy()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mBreakStrategy:I

    return p0
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 10

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p0, p1

    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v5, 0x800

    invoke-static {p3, v5}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-static {p3, v5}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p3

    if-nez v4, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    sub-int v2, v3, v1

    shr-int/2addr v2, v5

    if-eqz p3, :cond_1

    add-int/2addr v1, v2

    :cond_1
    if-eqz v4, :cond_2

    sub-int/2addr v3, v2

    :cond_2
    cmpg-float v6, p0, p1

    if-gez v6, :cond_3

    move p0, p1

    :cond_3
    int-to-float v6, v1

    invoke-virtual {p2, p0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v3

    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    if-ne v4, v5, :cond_4

    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v4, v2

    sub-float v8, p0, v4

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p2, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v4, p0

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_4
    if-ne v4, v0, :cond_5

    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v4, v2

    sub-float v8, p0, v4

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p2, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v9, v3, p1

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v4, p0

    invoke-virtual {p2, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    :goto_0
    if-ne p3, v5, :cond_6

    invoke-virtual {p2, p0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, v2

    sub-float p3, p0, p1

    sub-int/2addr v1, v2

    int-to-float v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p0, p1

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    :cond_6
    if-ne p3, v0, :cond_7

    invoke-virtual {p2, p0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, v2

    sub-float v0, p0, p3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr p3, p0

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p2, p0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public final whitelist getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    return p0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-o getHeight(Z)I
    .locals 0

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final whitelist getHyphenationFrequency()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    return p0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getJustificationMode()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mJustificationMode:I

    return p0
.end method

.method public final whitelist getLeftIndents()[I
    .locals 3

    iget-object p0, p0, Landroid/text/Layout;->mLeftIndents:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final whitelist getLineAscent(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result p0

    return p0
.end method

.method public whitelist getLineBottom(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    return p0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method public abstract whitelist getLineContainsTab(I)Z
.end method

.method public abstract whitelist getLineCount()I
.end method

.method public abstract whitelist getLineDescent(I)I
.end method

.method public abstract whitelist getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final whitelist getLineEnd(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getLineForOffset(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .locals 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    int-to-float v0, v0

    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public whitelist getLineLetterSpacingUnitCount(IZ)I
    .locals 13

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v12}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result p2

    :goto_0
    move v4, p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_1

    return v12

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    add-int v10, p2, p1

    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    iget-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-nez p1, :cond_2

    new-instance p1, Landroid/text/TextLine$LineInfo;

    invoke-direct {p1}, Landroid/text/TextLine$LineInfo;-><init>()V

    iput-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    :cond_2
    iget-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {p1, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    iget-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    iget-object p2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    iget-object p0, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {p0}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result p0

    return p0
.end method

.method public whitelist getLineMax(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 4

    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist getLineRight(I)F
    .locals 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    return p0

    :cond_7
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    int-to-float v0, v0

    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sub-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final whitelist getLineSpacingAmount()F
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return p0
.end method

.method public final whitelist getLineSpacingMultiplier()F
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mSpacingMult:F

    return p0
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result p0

    return p0
.end method

.method public whitelist getLineWidth(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final whitelist getMaxLines()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mMaxLines:I

    return p0
.end method

.method public whitelist getMinimumFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p0

    return p0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int v12, v9, v10

    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    new-instance v3, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v4, p3

    invoke-direct {v3, v0, v1, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    xor-int/2addr v4, v7

    invoke-virtual {v2, v1, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int v6, v1, v5

    :goto_0
    invoke-virtual {v3, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v9, v5

    const/4 v10, 0x0

    :goto_1
    iget-object v11, v8, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v11, v11

    if-ge v10, v11, :cond_a

    iget-object v11, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v11, v11, v10

    add-int/2addr v11, v5

    iget-object v12, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v13, v10, 0x1

    aget v12, v12, v13

    const v14, 0x3ffffff

    and-int/2addr v12, v14

    add-int/2addr v12, v11

    iget-object v14, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v13, v14, v13

    const/high16 v14, 0x4000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    move v13, v7

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_2

    const/4 v14, -0x1

    goto :goto_3

    :cond_2
    move v14, v7

    :goto_3
    if-le v12, v6, :cond_3

    move v12, v6

    :cond_3
    add-int/lit8 v15, v11, 0x1

    move/from16 p3, v1

    move v4, v11

    move/from16 v16, v12

    :goto_4
    sub-int v1, v16, v4

    if-le v1, v7, :cond_5

    add-int v1, v16, v4

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v7

    int-to-float v0, v14

    mul-float/2addr v7, v0

    mul-float v0, v0, p2

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_4

    move/from16 v16, v1

    goto :goto_5

    :cond_4
    move v4, v1

    :goto_5
    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_5
    if-ge v4, v15, :cond_6

    goto :goto_6

    :cond_6
    move v15, v4

    :goto_6
    if-ge v15, v12, :cond_8

    sub-int/2addr v15, v5

    invoke-virtual {v2, v15, v13}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int/2addr v0, v5

    sub-int v1, v0, v5

    xor-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v5

    if-lt v1, v11, :cond_8

    if-ge v1, v12, :cond_8

    invoke-virtual {v3, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-ge v0, v12, :cond_7

    invoke-virtual {v3, v0}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v7

    sub-float v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v12, v7, v4

    if-gez v12, :cond_7

    move v4, v7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    cmpg-float v1, v4, p3

    if-gez v1, :cond_8

    move v9, v0

    move v1, v4

    goto :goto_8

    :cond_8
    move/from16 v1, p3

    :goto_8
    invoke-virtual {v3, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v4, v0, v1

    if-gez v4, :cond_9

    move v1, v0

    move v9, v11

    :cond_9
    add-int/lit8 v10, v10, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_a
    move/from16 p3, v1

    invoke-virtual {v3, v6}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_b

    goto :goto_9

    :cond_b
    move v6, v9

    :goto_9
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v6
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p0

    return p0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p0

    return p0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 3

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    const-class p1, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v2, p0, p1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/AlignmentSpan;

    array-length p1, p0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-interface {p0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getParagraphRight(I)I
    .locals 3

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p0

    return p0
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .locals 12

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-object v3

    :cond_0
    move v5, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    if-nez v0, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return-object v3

    :cond_1
    if-ge v0, v5, :cond_2

    return-object v3

    :cond_2
    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p0

    move-object v9, v7

    move-object v10, v8

    move-object v8, v6

    move-object v6, v4

    :goto_0
    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    if-ge v5, v0, :cond_3

    add-int/lit8 v7, v5, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p0

    move v5, v7

    goto :goto_0

    :cond_3
    if-ne p0, p1, :cond_4

    return-object v3

    :cond_4
    const/4 v11, 0x0

    move v7, v0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p2

    :goto_1
    if-ne p2, p1, :cond_5

    if-ge v5, v0, :cond_5

    add-int/lit8 v7, v0, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p2

    move v0, v7

    goto :goto_1

    :cond_5
    if-ne p2, p1, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v9, p0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v9, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public final whitelist getRightIndents()[I
    .locals 3

    iget-object p0, p0, Landroid/text/Layout;->mRightIndents:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public greylist-max-o getRunRange(I)J
    .locals 8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget v5, v1, v4

    add-int/2addr v5, v2

    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    add-int/2addr v6, v5

    if-lt p1, v5, :cond_1

    if-ge p1, v6, :cond_1

    invoke-static {v5, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p0

    return p0
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 11

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-ge p2, p1, :cond_1

    move v3, p1

    move v2, p2

    goto :goto_0

    :cond_1
    move v2, p1

    move v3, p2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    if-ne v1, p1, :cond_2

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void

    :cond_2
    move-object v0, p0

    move-object v6, p3

    move p0, v3

    iget p3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float p3, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    move-object v7, v6

    move-object v6, v0

    move-object v0, v7

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_3

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    int-to-float v2, v4

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v4, v3

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v3, p3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    int-to-float v2, v4

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v4, v3

    const/4 v5, 0x1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_1
    add-int/lit8 v1, v7, 0x1

    move p3, v1

    :goto_2
    if-ge p3, p1, :cond_5

    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v6, p3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v10, :cond_4

    move v4, v2

    int-to-float v2, v1

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    :cond_4
    move v4, v2

    int-to-float v2, v1

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_3
    move v1, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    move v1, v3

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    invoke-virtual {v6, p1, p2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v8

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v4, p1

    move-object v9, v0

    move-object v3, v6

    move v6, p0

    invoke-direct/range {v3 .. v9}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    move-object v0, v3

    move-object v6, v9

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, v10, :cond_6

    int-to-float v2, v7

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    return-void

    :cond_6
    int-to-float v2, v7

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    int-to-float v4, v8

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public blacklist getSelectionRect(IIIIILandroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    if-le v1, v0, :cond_0

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v2, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v5, v5, v4

    add-int/2addr v5, v0

    iget-object v6, v2, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    add-int/2addr v6, v5

    if-le v6, v1, :cond_1

    move v6, v1

    :cond_1
    if-gt p2, v6, :cond_2

    if-lt p3, v5, :cond_2

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-direct {p0, v5, v3, p1, v3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v5

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, p1, v3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p6, v7, p4, v5, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public whitelist getShiftDrawingOffsetForStartOverhang()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    return p0
.end method

.method public final whitelist getSpacingAdd()F
    .locals 0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingAmount()F

    move-result p0

    return p0
.end method

.method public final whitelist getSpacingMultiplier()F
    .locals 0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingMultiplier()F

    move-result p0

    return p0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final whitelist getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public whitelist getUseBoundsForWidth()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    return p0
.end method

.method public final whitelist getWidth()I
    .locals 0

    iget p0, p0, Landroid/text/Layout;->mWidth:I

    return p0
.end method

.method public final whitelist increaseWidthTo(I)V
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "attempted to reduce Layout width"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    return p0
.end method

.method public final whitelist isFontPaddingIncluded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mIncludePad:Z

    return p0
.end method

.method public greylist isLevelBoundary(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    move p0, v3

    :goto_0
    array-length v0, v1

    if-ge p0, v0, :cond_3

    aget v0, v1, p0

    if-ne p1, v0, :cond_2

    return v5

    :cond_2
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, v5, :cond_5

    move p0, v3

    goto :goto_2

    :cond_5
    move p0, v5

    :goto_2
    if-ne p1, v2, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    array-length p1, v1

    add-int/lit8 p1, p1, -0x2

    :goto_3
    add-int/2addr p1, v5

    aget p1, v1, p1

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    if-eq p1, p0, :cond_7

    return v5

    :cond_7
    :goto_4
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .locals 7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    move v0, v3

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget v2, v1, v0

    add-int/2addr v2, p0

    add-int/lit8 v5, v0, 0x1

    aget v5, v1, v5

    const v6, 0x3ffffff

    and-int/2addr v6, v5

    add-int/2addr v6, v2

    if-lt p1, v2, :cond_3

    if-ge p1, v6, :cond_3

    ushr-int/lit8 p0, v5, 0x1a

    and-int/2addr p0, v4

    if-eqz p0, :cond_2

    return v4

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, -0x1

    if-ge v5, v6, :cond_3

    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int v10, v9, v7

    add-int/2addr v10, v6

    if-le v10, v2, :cond_0

    move v10, v2

    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v10, :cond_2

    if-le p1, v6, :cond_1

    return v4

    :cond_1
    ushr-int/lit8 v5, v9, 0x1a

    and-int/lit8 v5, v5, 0x3f

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_1
    const/4 v6, 0x1

    if-ne v5, v8, :cond_5

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v6

    :cond_5
    :goto_2
    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, v6, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v6

    goto :goto_4

    :cond_7
    add-int/2addr p1, v8

    move p0, v4

    :goto_3
    array-length v0, v3

    if-ge p0, v0, :cond_a

    aget v0, v3, p0

    add-int/2addr v0, v1

    add-int/lit8 v9, p0, 0x1

    aget v9, v3, v9

    and-int v10, v9, v7

    add-int/2addr v10, v0

    if-le v10, v2, :cond_8

    move v10, v2

    :cond_8
    if-lt p1, v0, :cond_9

    if-ge p1, v10, :cond_9

    ushr-int/lit8 p0, v9, 0x1a

    and-int/lit8 v8, p0, 0x3f

    goto :goto_4

    :cond_9
    add-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_a
    :goto_4
    if-ge v8, v5, :cond_b

    return v6

    :cond_b
    return v4
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Z

    new-array v3, v3, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_2

    aget v8, v2, v7

    add-int/2addr v8, v0

    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    const v10, 0x3ffffff

    and-int/2addr v10, v9

    add-int/2addr v10, v8

    if-le v10, v1, :cond_0

    move v10, v1

    :cond_0
    if-ne v10, v8, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v10, v0

    sub-int/2addr v10, v4

    ushr-int/lit8 v8, v9, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v3, v10

    :goto_1
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_2
    array-length v7, v2

    if-ge v1, v7, :cond_6

    aget v7, v2, v1

    add-int/2addr v7, v0

    add-int/lit8 v8, v1, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    sub-int v9, v7, v0

    if-ne v7, v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v4, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v9, -0x1

    aget-byte v7, v3, v7

    :goto_3
    if-le v8, v7, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    aput-boolean v7, v5, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_6
    return-object v5
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 0

    if-ltz p3, :cond_0

    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Layout: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-lez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method
