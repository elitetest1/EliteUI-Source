.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;,
        Landroid/text/TextLine$LineInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist TAB_CHAR:C = '\t'

.field private static final greylist-max-o TAB_INCREMENT:I = 0x14

.field private static final greylist-max-p sCached:[Landroid/text/TextLine;


# instance fields
.field private final greylist-max-o mActivePaint:Landroid/text/TextPaint;

.field private blacklist mAddedLetterSpacingInPx:F

.field private blacklist mAddedWordSpacingInPx:F

.field private final greylist-max-r mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChars:[C

.field private greylist-max-o mCharsValid:Z

.field private greylist-max-o mComputed:Landroid/text/PrecomputedText;

.field private final greylist-max-o mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final greylist-max-o mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDir:I

.field private greylist-max-o mDirections:Landroid/text/Layout$Directions;

.field private blacklist mEllipsisEnd:I

.field private blacklist mEllipsisStart:I

.field private greylist-max-o mHasTabs:Z

.field private blacklist mIsJustifying:Z

.field private greylist-max-o mLen:I

.field private final greylist-max-r mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-r mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRunInfo:Landroid/graphics/Paint$RunInfo;

.field private greylist-max-p mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mStart:I

.field private greylist-max-o mTabs:Landroid/text/Layout$TabStops;

.field private greylist-max-r mText:Ljava/lang/CharSequence;

.field private blacklist mTmpRectForMeasure:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPaintAPI:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPrecompute:Landroid/graphics/Rect;

.field private blacklist mUseFallbackExtent:Z

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine-IA;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist adjustEndHyphenEdit(II)I
    .locals 0

    iget p0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p2
.end method

.method private blacklist adjustStartHyphenEdit(II)I
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p2
.end method

.method public static blacklist calculateRunFlag(III)I
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x6000

    return p0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    add-int/lit8 v2, p1, -0x1

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x2000

    const/16 v3, 0x4000

    if-nez p0, :cond_3

    if-ne p2, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    sub-int/2addr p1, v0

    if-ne p0, p1, :cond_5

    if-ne p2, v0, :cond_4

    or-int/lit16 p0, v1, 0x4000

    return p0

    :cond_4
    or-int/lit16 p0, v1, 0x2000

    return p0

    :cond_5
    return v1
.end method

.method private blacklist charAt(I)C
    .locals 1

    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method private greylist-max-o countStretchableSpaces(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    iget-boolean v1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v1, v1, p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :goto_1
    invoke-direct {p0, v1}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private blacklist drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v4, p4

    if-ne v2, v4, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v5, p1

    move/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v17, p10

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    return v18

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v14, p9

    move/from16 v18, p10

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 3

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float/2addr p7, v0

    add-float/2addr p7, p3

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v2

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float/2addr p4, p7

    move p2, p5

    move-object p5, p0

    move-object p0, p1

    move p1, p2

    move p3, p6

    move p2, p7

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p5, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p5, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p5, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private greylist-max-o drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p9

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    sub-int v6, p4, p3

    sub-int v8, p6, p5

    iget-object v4, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v10, v1

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v11, p7

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    iget-object v12, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v13, v2, p3

    add-int v14, v2, p4

    add-int v15, v2, p5

    add-int v16, v2, p6

    int-to-float v0, v1

    move-object/from16 v11, p1

    move-object/from16 v20, p2

    move/from16 v19, p7

    move/from16 v17, p8

    move/from16 v18, v0

    invoke-virtual/range {v11 .. v20}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private static blacklist equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget p1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private blacklist expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8

    move-object v0, p1

    iget p1, p7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v2, p2

    iget p2, p7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v1, p3

    iget p3, p7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v4, p4

    iget p4, p7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v3, p5

    iget p5, p7, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v5, v3

    sub-int v3, v1, v2

    sub-int/2addr v5, v4

    iget-boolean v6, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v6, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_0
    move-object p0, v7

    goto :goto_1

    :cond_0
    move v6, p6

    move-object v7, p7

    iget-object p6, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez p6, :cond_1

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p0

    add-int/2addr v4, p0

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/text/TextLine;->mStart:I

    add-int p7, p0, v2

    add-int/2addr p0, v1

    invoke-virtual {p6, p7, p0, v7}, Landroid/text/PrecomputedText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :goto_1
    invoke-static/range {p0 .. p5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private greylist-max-o extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result p0

    iput-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result p0

    iput-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1
    iget p0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput p0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget p0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput p0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private greylist-max-o getOffsetBeforeAfter(IIIZIZ)I
    .locals 8

    if-ltz p1, :cond_c

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-ne p5, v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    iget v0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_9

    if-ne p2, p3, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p6, :cond_4

    add-int/lit8 v0, p5, 0x1

    goto :goto_1

    :cond_4
    move v0, p5

    :goto_1
    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p3

    :goto_2
    iget-object p3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p2

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, v3, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p3, v3

    if-lt p3, v0, :cond_8

    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int v2, v3, p2

    add-int/2addr v3, p3

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    iget-object v2, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    array-length v2, v0

    if-lez v2, :cond_9

    const/4 v2, 0x0

    move v3, p1

    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_6

    aget-object v4, v0, v3

    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_5

    check-cast v4, Landroid/text/style/ReplacementSpan;

    move-object v2, v4

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_9

    if-eqz p6, :cond_7

    return p3

    :cond_7
    return p2

    :cond_8
    move p2, p3

    goto :goto_2

    :cond_9
    :goto_5
    move v3, p2

    if-eqz p6, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x2

    :goto_6
    move v7, p1

    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_b

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, p3, v3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result p0

    return p0

    :cond_b
    move v5, p4

    move v6, p5

    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p1

    add-int v4, p1, p3

    add-int/2addr v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    :goto_7
    sub-int/2addr p1, p0

    return p1

    :cond_c
    :goto_8
    move v6, p5

    if-eqz p6, :cond_d

    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int p5, v6, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    goto :goto_7

    :cond_d
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int p5, v6, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    goto :goto_7
.end method

.method private blacklist getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .locals 13

    move-object/from16 v12, p11

    if-eqz v12, :cond_1

    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint$RunInfo;

    invoke-direct {v0}, Landroid/graphics/Paint$RunInfo;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    :goto_0
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object p0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {p0}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_2
    return p1

    :cond_3
    move-object/from16 v10, p10

    iget v0, p0, Landroid/text/TextLine;->mStart:I

    iget-object v1, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-eqz v1, :cond_7

    if-nez p8, :cond_7

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_6

    iget-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    if-nez p1, :cond_5

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    :cond_5
    iget-object p1, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v1, p2, v0

    add-int v2, p3, v0

    iget-object v3, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v10, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_6
    iget-object p0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int p1, p2, v0

    add-int v0, p3, v0

    invoke-virtual {p0, p1, v0}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result p0

    return p0

    :cond_7
    :goto_1
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v0, p2

    add-int v3, v0, p3

    add-int v4, v0, p4

    add-int v5, v0, p5

    add-int v7, v0, p7

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object p0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {p0}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_8
    return p1
.end method

.method private greylist-max-o handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p11

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    add-int v5, v1, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v13, v4

    move v14, v5

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    if-eqz v7, :cond_3

    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v8, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v10, v3

    move v11, v8

    move v12, v9

    move v8, v1

    move v9, v2

    goto :goto_2

    :cond_3
    move v8, v1

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_2
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    move v13, v4

    move v14, v5

    int-to-float v15, v3

    if-eqz v7, :cond_4

    move-object/from16 v1, p11

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    :cond_4
    move v1, v15

    :goto_3
    if-eqz p6, :cond_6

    if-eqz p5, :cond_5

    sub-float v2, p7, v1

    move v7, v2

    goto :goto_4

    :cond_5
    move/from16 v7, p7

    :goto_4
    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v3, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move v5, v13

    move v6, v14

    invoke-virtual/range {v2 .. v11}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_6
    if-eqz p5, :cond_7

    neg-float v0, v1

    return v0

    :cond_7
    return v1
.end method

.method private blacklist handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v0, p14

    if-lt v3, v2, :cond_20

    if-gt v3, v4, :cond_20

    if-eqz v0, :cond_1

    array-length v5, v0

    sub-int v5, v5, p15

    sub-int v6, v3, v2

    if-lt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "advances doesn\'t have enough space to receive the result"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v13, 0x0

    if-ne v2, v3, :cond_5

    iget-object v0, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v14, :cond_2

    invoke-static {v14, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_2
    if-eqz v15, :cond_4

    if-nez v14, :cond_3

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-static {v1, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    move-object v14, v1

    :cond_3
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v15, v13, v0, v13, v1}, Landroid/graphics/RectF;->union(FFFF)V

    :cond_4
    return v13

    :cond_5
    iget-object v5, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int v8, v7, v2

    add-int/2addr v7, v4

    invoke-virtual {v6, v5, v8, v7}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v6, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int v8, v7, v2

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v8, v7}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v5, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v5, :cond_8

    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v5, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v6, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v5}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v6

    invoke-direct {v1, v4, v6}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    const/16 v18, 0x0

    move-object v2, v5

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v16, p13

    move/from16 v20, p15

    move-object/from16 v21, p16

    move/from16 v22, p17

    move-object/from16 v19, v0

    move/from16 v17, v3

    move/from16 v3, p1

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    :cond_8
    :goto_2
    move v14, v3

    move/from16 v5, p1

    move/from16 v7, p7

    :goto_3
    if-ge v5, v14, :cond_1f

    iget-object v2, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    add-int v4, v3, v5

    add-int v3, v3, p3

    invoke-virtual {v0, v4, v3}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    sub-int v15, v0, v3

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x0

    const/16 v23, 0x0

    move-object v6, v0

    move/from16 v3, v23

    :goto_4
    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v8, v8, Landroid/text/SpanSet;->numberOfSpans:I

    const/16 v24, 0x1

    if-ge v3, v8, :cond_e

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanStarts:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v4

    if-ge v8, v9, :cond_d

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanEnds:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    add-int v10, v9, v5

    if-gt v8, v10, :cond_9

    goto :goto_6

    :cond_9
    iget v8, v1, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v9, v8

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanStarts:[I

    aget v8, v8, v3

    if-gt v9, v8, :cond_a

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanEnds:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    iget v10, v1, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v9, v10

    if-gt v8, v9, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v24, v23

    :goto_5
    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v8, [Landroid/text/style/MetricAffectingSpan;

    aget-object v8, v8, v3

    instance-of v9, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v9, :cond_c

    if-nez v24, :cond_b

    check-cast v8, Landroid/text/style/ReplacementSpan;

    move-object v6, v8

    goto :goto_6

    :cond_b
    move-object v6, v0

    goto :goto_6

    :cond_c
    invoke-virtual {v8, v2}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    if-eqz v6, :cond_13

    if-nez p13, :cond_10

    if-ge v4, v14, :cond_f

    goto :goto_7

    :cond_f
    move/from16 v12, v23

    goto :goto_8

    :cond_10
    :goto_7
    move/from16 v12, v24

    :goto_8
    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object v0, v1

    move v3, v5

    move-object v1, v6

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    move-object v8, v0

    move v6, v4

    move v0, v7

    move v7, v3

    add-float/2addr v0, v1

    if-eqz p14, :cond_12

    add-int v2, p15, v7

    sub-int v2, v2, p1

    if-eqz p4, :cond_11

    neg-float v1, v1

    :cond_11
    aput v1, p14, v2

    add-int/lit8 v5, v7, 0x1

    :goto_9
    if-ge v5, v6, :cond_12

    add-int v1, p15, v5

    sub-int v1, v1, p1

    aput v13, p14, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    move v7, v0

    move/from16 v29, v13

    move v0, v14

    move v6, v15

    goto/16 :goto_14

    :cond_13
    move-object v8, v1

    move-object v9, v2

    move v6, v4

    move v0, v7

    move v7, v5

    iget-object v10, v8, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v11, v8, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move/from16 v16, v0

    move v3, v7

    move v12, v3

    :goto_a
    if-ge v12, v6, :cond_1c

    iget-object v0, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v8, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v12

    add-int/2addr v1, v15

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v8, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v2, v23

    :goto_b
    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v2, v5, :cond_16

    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spanStarts:[I

    aget v5, v5, v2

    iget v13, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v13, v1

    if-ge v5, v13, :cond_15

    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spanEnds:[I

    aget v5, v5, v2

    iget v13, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v13, v12

    if-gt v5, v13, :cond_14

    goto :goto_c

    :cond_14
    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v5, [Landroid/text/style/CharacterStyle;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x0

    goto :goto_b

    :cond_16
    invoke-direct {v8, v9, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v12, v7, :cond_17

    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto/16 :goto_f

    :cond_17
    invoke-static {v9, v10}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v1

    if-nez v1, :cond_1a

    move/from16 v2, p1

    move/from16 v1, p4

    move v13, v0

    move v5, v4

    move/from16 v0, p17

    move v4, v3

    move v3, v14

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    move v0, v3

    move v3, v4

    move v4, v5

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    invoke-direct {v8, v3, v1}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    invoke-direct {v8, v4, v1}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p13, :cond_19

    if-ge v4, v0, :cond_18

    goto :goto_d

    :cond_18
    move-object v2, v10

    move/from16 v10, v16

    move/from16 v16, v23

    goto :goto_e

    :cond_19
    :goto_d
    move-object v2, v10

    move/from16 v10, v16

    move/from16 v16, v24

    :goto_e
    const/4 v1, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v5, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v14, p15, v3

    sub-int v20, v14, p1

    move-object/from16 v14, p11

    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move/from16 v29, v1

    move-object/from16 v18, v5

    move/from16 v25, v6

    move v5, v7

    move-object v1, v8

    move-object v0, v9

    move-object/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move v6, v15

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v3

    move-object v8, v1

    move-object v9, v2

    move v7, v5

    add-float v16, v10, v3

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v27

    goto :goto_10

    :cond_1a
    :goto_f
    move/from16 v28, v0

    move/from16 v25, v6

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move v6, v15

    move/from16 v10, v16

    const/16 v29, 0x0

    move/from16 v16, v10

    :goto_10
    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v1

    move/from16 v2, v27

    iput v2, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v13, v28

    iput v13, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    iget-object v2, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1b
    move/from16 v13, v28

    :goto_11
    move/from16 v14, p2

    move v15, v6

    move-object v10, v9

    move v4, v13

    move v12, v4

    move/from16 v6, v25

    move-object/from16 v11, v26

    move/from16 v13, v29

    move-object v9, v0

    goto/16 :goto_a

    :cond_1c
    move/from16 v2, p1

    move/from16 v1, p4

    move/from16 v0, p17

    move v5, v4

    move/from16 v25, v6

    move-object v9, v10

    move/from16 v29, v13

    move v6, v15

    move/from16 v10, v16

    move v4, v3

    move v3, v14

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    move v0, v3

    move v3, v4

    move v4, v5

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    invoke-direct {v8, v3, v1}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    invoke-direct {v8, v4, v1}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p13, :cond_1e

    if-ge v4, v0, :cond_1d

    goto :goto_12

    :cond_1d
    move/from16 v16, v23

    goto :goto_13

    :cond_1e
    :goto_12
    move/from16 v16, v24

    :goto_13
    move/from16 v1, v25

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v2, p15, v3

    sub-int v20, v2, p1

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move-object/from16 v18, v1

    move v5, v7

    move-object v1, v8

    move-object v2, v9

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v2

    add-float v16, v10, v2

    move/from16 v7, v16

    :goto_14
    move-object/from16 v1, p0

    move v14, v0

    move v5, v6

    move/from16 v13, v29

    goto/16 :goto_3

    :cond_1f
    move v0, v7

    sub-float v7, v0, p7

    return v7

    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "measureLimit ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") and limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextShaper$GlyphsConsumer;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "Landroid/graphics/RectF;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;[FI",
            "Landroid/text/TextLine$LineInfo;",
            "I)F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v12, p9

    move-object/from16 v14, p14

    move/from16 v4, p21

    iget-boolean v5, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setWordSpacing(F)V

    iget v5, v0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    if-eqz v14, :cond_1

    if-nez p13, :cond_1

    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v5, p13

    :goto_0
    if-eqz v5, :cond_2

    invoke-static {v5, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_2
    const/4 v6, 0x0

    if-ne v3, v2, :cond_3

    return v6

    :cond_3
    and-int/lit16 v7, v4, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_4

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x2001

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_1
    const/16 v7, 0x4000

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_5

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    or-int/2addr v4, v7

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, -0x4001

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_2
    const/16 v16, 0x0

    if-nez p17, :cond_6

    move/from16 v4, v16

    goto :goto_3

    :cond_6
    invoke-virtual/range {p17 .. p17}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-nez p15, :cond_9

    if-nez p7, :cond_7

    if-eqz p8, :cond_8

    :cond_7
    iget v7, v1, Landroid/text/TextPaint;->bgColor:I

    if-nez v7, :cond_9

    if-nez v4, :cond_9

    if-eqz p6, :cond_8

    goto :goto_4

    :cond_8
    move v13, v4

    move-object/from16 v17, v5

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz v14, :cond_a

    iget-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    if-nez v7, :cond_a

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :cond_a
    if-nez v14, :cond_b

    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    iget-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :goto_5
    move-object/from16 v8, p18

    move/from16 v9, p19

    move-object/from16 v11, p20

    move v13, v4

    move-object/from16 v17, v5

    move v15, v6

    move-object v10, v7

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v8

    if-eqz v14, :cond_d

    if-eqz p6, :cond_c

    iget-object v2, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    sub-float v3, v12, v8

    invoke-virtual {v2, v3, v15}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    :cond_c
    iget-object v2, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v2, v12, v15}, Landroid/graphics/RectF;->offset(FF)V

    :goto_6
    iget-object v2, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v14, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_d
    move v6, v8

    :goto_7
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_e

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->semNeedMoreWidth(C)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v6, v2

    :cond_e
    move v14, v6

    if-eqz p6, :cond_f

    sub-float v2, v12, v14

    move v8, v2

    goto :goto_8

    :cond_f
    add-float v2, v12, v14

    move v8, v12

    move v12, v2

    :goto_8
    if-eqz p8, :cond_10

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Landroid/text/TextLine;->shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V

    :cond_10
    iget-boolean v1, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v1, :cond_11

    if-eqz v17, :cond_11

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_9

    :cond_11
    move-object/from16 v1, p1

    :goto_9
    if-eqz p7, :cond_17

    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p10

    int-to-float v2, v0

    move/from16 v0, p12

    int-to-float v4, v0

    move-object/from16 v0, p7

    move-object v5, v1

    move v1, v8

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v1, v5

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_12
    iget v0, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, p11, v0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    move v2, v3

    move v15, v8

    if-eqz v13, :cond_17

    move/from16 v0, v16

    :goto_a
    if-ge v0, v13, :cond_17

    move-object/from16 v1, p17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextLine$DecorationInfo;

    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v17, v0

    move/from16 p8, v12

    move-object/from16 v0, p0

    move-object v12, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v18

    move/from16 v2, p2

    move/from16 v7, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v7

    if-eqz p6, :cond_13

    sub-float v0, p8, v7

    sub-float v1, p8, v18

    goto :goto_b

    :cond_13
    add-float v0, v15, v18

    add-float v1, v15, v7

    :goto_b
    move v5, v0

    move v6, v1

    iget v0, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_14

    iget v2, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v12, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v8, p11

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_c

    :cond_14
    move/from16 v8, p11

    :goto_c
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_15
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_16
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, p2

    move/from16 v12, p8

    goto/16 :goto_a

    :cond_17
    if-eqz p6, :cond_18

    neg-float v0, v14

    return v0

    :cond_18
    return v14
.end method

.method public static greylist-max-o isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o isStretchableWhitespace(I)Z
    .locals 0

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F
    .locals 19

    if-eqz p6, :cond_1

    move-object/from16 v1, p0

    iget v0, v1, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v5, p4

    if-ne v2, v5, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p11

    move-object v0, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v5

    neg-float v0, v5

    add-float v8, p9, v0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    :cond_1
    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v8, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method public static greylist obtain()Landroid/text/TextLine;
    .locals 5

    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    :try_start_0
    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v1

    monitor-exit v0

    return-object v3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist-max-o recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    iget-object v2, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    iget-object v2, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    iget-object v2, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    aput-object p0, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist resolveRunFlagForSubSequence(IZIIII)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p5, p3, :cond_2

    goto :goto_0

    :cond_1
    if-eq p4, p2, :cond_2

    :goto_0
    and-int/lit16 v0, p0, -0x2001

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eq p4, p2, :cond_4

    and-int/lit16 p0, v0, -0x4001

    return p0

    :cond_3
    if-eq p5, p3, :cond_4

    and-int/lit16 p0, v0, -0x4001

    return p0

    :cond_4
    return v0
.end method

.method private blacklist shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v4, p4

    if-ne v2, v4, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v6, p1

    move/from16 v4, p4

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    return v18

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v14, p6

    move/from16 v18, p7

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private blacklist shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V
    .locals 9

    sub-int v2, p4, p3

    sub-int v4, p6, p5

    iget-boolean p4, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v6, 0x0

    move-object v8, p2

    move v1, p3

    move v3, p5

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    add-int v1, p0, p3

    add-int v3, p0, p5

    const/4 v6, 0x0

    move-object v8, p2

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p3, v2, p0, p2}, Landroid/text/TextShaper$GlyphsConsumer;->accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V

    return-void
.end method

.method static greylist-max-o updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method greylist-max-o draw(Landroid/graphics/Canvas;FIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    const/4 v1, 0x0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_8

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v13}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v13}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v13}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v13, v11, v3}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v10

    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v14

    :goto_1
    move v15, v1

    :goto_2
    if-gt v3, v14, :cond_7

    if-eq v3, v14, :cond_2

    invoke-direct {v0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_6

    :cond_2
    add-float v5, p2, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v13, v1, :cond_4

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_3

    goto :goto_3

    :cond_3
    move v9, v12

    move-object/from16 v1, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    move v9, v1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v1, p1

    :goto_4
    invoke-direct/range {v0 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F

    move-result v2

    add-float/2addr v15, v2

    if-eq v3, v14, :cond_5

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v15, v1

    invoke-virtual {v0, v15}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v2, v1

    move v15, v2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move v1, v15

    goto :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method public blacklist getAddedLetterSpacingInPx()F
    .locals 0

    iget p0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    return p0
.end method

.method public blacklist getAddedWordSpacingInPx()F
    .locals 0

    iget p0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    return p0
.end method

.method greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v7, p2

    iget v8, v0, Landroid/text/TextLine;->mLen:I

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v13, v1, Landroid/text/Layout$Directions;->mDirections:[I

    const v15, 0x3ffffff

    if-nez v5, :cond_1

    move v4, v11

    move/from16 v19, v15

    const/4 v1, -0x2

    :goto_1
    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_1
    if-ne v5, v8, :cond_2

    array-length v1, v13

    move v4, v11

    move/from16 v19, v15

    goto :goto_1

    :cond_2
    move v3, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    array-length v4, v13

    if-ge v1, v4, :cond_b

    aget v2, v13, v1

    if-lt v5, v2, :cond_a

    add-int/lit8 v3, v1, 0x1

    aget v3, v13, v3

    and-int v4, v3, v15

    add-int/2addr v4, v2

    if-le v4, v8, :cond_3

    move v4, v8

    :cond_3
    if-ge v5, v4, :cond_9

    ushr-int/lit8 v3, v3, 0x1a

    and-int/lit8 v3, v3, 0x3f

    if-ne v5, v2, :cond_8

    add-int/lit8 v6, v5, -0x1

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_3
    array-length v10, v13

    if-ge v9, v10, :cond_7

    aget v10, v13, v9

    if-lt v6, v10, :cond_5

    add-int/lit8 v18, v9, 0x1

    aget v18, v13, v18

    and-int v19, v18, v15

    add-int v14, v10, v19

    if-le v14, v8, :cond_4

    move v14, v8

    :cond_4
    if-ge v6, v14, :cond_5

    ushr-int/lit8 v18, v18, 0x1a

    move/from16 v19, v15

    and-int/lit8 v15, v18, 0x3f

    if-ge v15, v3, :cond_6

    move v1, v9

    move v2, v10

    move v3, v15

    move/from16 v4, v16

    goto :goto_4

    :cond_5
    move/from16 v19, v15

    :cond_6
    add-int/lit8 v9, v9, 0x2

    move/from16 v15, v19

    goto :goto_3

    :cond_7
    move/from16 v19, v15

    move v14, v4

    move/from16 v4, v17

    :goto_4
    move v9, v3

    move v3, v14

    goto :goto_5

    :cond_8
    move/from16 v19, v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    move v9, v3

    move v3, v4

    move/from16 v4, v17

    goto :goto_5

    :cond_9
    move v3, v4

    :cond_a
    move/from16 v19, v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v1, v1, 0x2

    move/from16 v15, v19

    goto :goto_2

    :cond_b
    move/from16 v19, v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v4, v17

    move v9, v4

    :goto_5
    array-length v6, v13

    if-eq v1, v6, :cond_11

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_c

    move/from16 v6, v16

    goto :goto_6

    :cond_c
    move/from16 v6, v17

    :goto_6
    move v10, v6

    if-ne v7, v6, :cond_d

    move/from16 v6, v16

    goto :goto_7

    :cond_d
    move/from16 v6, v17

    :goto_7
    if-eqz v6, :cond_e

    move v14, v3

    goto :goto_8

    :cond_e
    move v14, v2

    :goto_8
    if-ne v5, v14, :cond_f

    if-eq v6, v4, :cond_11

    :cond_f
    move v4, v10

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v4

    if-eqz v6, :cond_10

    move v2, v3

    :cond_10
    if-eq v4, v2, :cond_12

    return v4

    :cond_11
    move v4, v11

    :cond_12
    :goto_9
    if-ne v7, v12, :cond_13

    move/from16 v0, v16

    goto :goto_a

    :cond_13
    move/from16 v0, v17

    :goto_a
    if-eqz v0, :cond_14

    const/4 v2, 0x2

    goto :goto_b

    :cond_14
    const/4 v2, -0x2

    :goto_b
    add-int/2addr v1, v2

    if-ltz v1, :cond_1d

    array-length v2, v13

    if-ge v1, v2, :cond_1d

    aget v2, v13, v1

    add-int/lit8 v0, v1, 0x1

    aget v0, v13, v0

    and-int v3, v0, v19

    add-int/2addr v3, v2

    if-le v3, v8, :cond_15

    move v3, v8

    :cond_15
    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v10, v0, 0x3f

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    move/from16 v0, v16

    goto :goto_c

    :cond_16
    move/from16 v0, v17

    :goto_c
    if-ne v7, v0, :cond_17

    move/from16 v6, v16

    goto :goto_d

    :cond_17
    move/from16 v6, v17

    :goto_d
    if-ne v4, v11, :cond_1b

    if-eqz v6, :cond_18

    move v5, v2

    goto :goto_e

    :cond_18
    move v5, v3

    :goto_e
    move v4, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v4

    move-object v5, v0

    if-eqz v6, :cond_19

    move v2, v3

    :cond_19
    if-ne v4, v2, :cond_1a

    move v9, v10

    goto :goto_9

    :cond_1a
    return v4

    :cond_1b
    if-ge v10, v9, :cond_21

    if-eqz v6, :cond_1c

    return v2

    :cond_1c
    return v3

    :cond_1d
    move-object/from16 v5, p0

    if-ne v4, v11, :cond_1f

    if-eqz v0, :cond_1e

    iget v0, v5, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1e
    return v11

    :cond_1f
    if-gt v4, v8, :cond_21

    if-eqz v0, :cond_20

    return v8

    :cond_20
    return v17

    :cond_21
    return v4
.end method

.method public blacklist isJustifying()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return p0
.end method

.method public blacklist justify(IF)V
    .locals 8

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    move v2, v0

    :goto_0
    const/4 v0, 0x1

    if-lez v2, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    if-ne p1, v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-direct {v1, p1, v2}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, p0

    int-to-float p0, p1

    div-float/2addr p2, p0

    iput p2, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    iput v7, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    goto :goto_2

    :cond_2
    move-object v1, p0

    new-instance v6, Landroid/text/TextLine$LineInfo;

    invoke-direct {v6}, Landroid/text/TextLine$LineInfo;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result p1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_3

    :goto_1
    return-void

    :cond_3
    sub-float p0, p2, p0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    iput p0, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    float-to-double p0, p0

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double p0, p0, v3

    if-lez p0, :cond_4

    iget-object p0, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \"liga\" off, \"cliga\" off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    sub-float/2addr p2, p1

    sub-int/2addr v2, v0

    int-to-float p1, v2

    div-float/2addr p2, p1

    iput p2, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    iget-object p1, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_4
    iput v7, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    :goto_2
    iput-boolean v0, v1, Landroid/text/TextLine;->mIsJustifying:Z

    return-void
.end method

.method public blacklist measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v10, p5

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v2, v1, :cond_11

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v10, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v1, v2, -0x1

    move v13, v1

    goto :goto_0

    :cond_1
    move v13, v2

    :goto_0
    const/4 v1, 0x0

    if-gez v13, :cond_2

    return v1

    :cond_2
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v14

    move v15, v12

    :goto_1
    if-ge v15, v14, :cond_10

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v3

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v5, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v5

    iget v6, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v14, v6}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    iget-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    move v9, v1

    move v1, v3

    move v3, v6

    :goto_3
    if-gt v3, v4, :cond_f

    if-eq v3, v4, :cond_6

    invoke-direct {v0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_5

    goto :goto_4

    :cond_5
    move v12, v4

    move v4, v5

    goto/16 :goto_a

    :cond_6
    :goto_4
    const/4 v6, 0x1

    if-lt v13, v1, :cond_7

    if-ge v13, v3, :cond_7

    move/from16 v16, v6

    goto :goto_5

    :cond_7
    move/from16 v16, v12

    :goto_5
    iget v7, v0, Landroid/text/TextLine;->mDir:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    move v7, v6

    goto :goto_6

    :cond_8
    move v7, v12

    :goto_6
    if-ne v7, v5, :cond_9

    move/from16 v17, v6

    goto :goto_7

    :cond_9
    move/from16 v17, v12

    :goto_7
    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p4

    move v4, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    :goto_8
    add-float/2addr v9, v0

    return v9

    :cond_a
    move v0, v4

    move v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, v3

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move v12, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    if-eqz v17, :cond_b

    goto :goto_9

    :cond_b
    neg-float v3, v3

    :goto_9
    add-float/2addr v9, v3

    if-eqz v16, :cond_c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    move v3, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    move v3, v2

    move/from16 v2, p1

    if-eq v3, v12, :cond_e

    if-ne v2, v3, :cond_d

    return v9

    :cond_d
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float/2addr v9, v1

    invoke-virtual {v0, v9}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float v9, v5, v1

    if-ne v13, v3, :cond_e

    return v9

    :cond_e
    add-int/lit8 v1, v3, 0x1

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p5

    move v5, v4

    move v4, v12

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p5

    move v1, v9

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_10
    :goto_b
    return v1

    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "offset("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be less than line limit("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist measureAllBounds([F[F)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    if-eqz v12, :cond_11

    array-length v1, v12

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v3, v2, 0x2

    const-string v4, " had: "

    if-lt v1, v3, :cond_10

    if-nez p2, :cond_0

    new-array v1, v2, [F

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    :goto_0
    array-length v1, v7

    if-lt v1, v2, :cond_f

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_e

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v13, v5}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    iget-boolean v5, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    move/from16 v16, v1

    move v1, v2

    move v2, v5

    :goto_3
    if-gt v2, v3, :cond_d

    if-eq v2, v3, :cond_4

    invoke-direct {v0, v2}, Landroid/text/TextLine;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    goto :goto_4

    :cond_3
    move v14, v3

    goto/16 :goto_c

    :cond_4
    :goto_4
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    const/4 v6, -0x1

    const/16 v17, 0x1

    if-ne v5, v6, :cond_5

    move/from16 v5, v17

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-ne v5, v4, :cond_6

    move/from16 v18, v17

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v8, v3

    move v3, v2

    move/from16 v19, v8

    move v8, v1

    move/from16 v14, v19

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    if-eqz v18, :cond_7

    goto :goto_7

    :cond_7
    neg-float v3, v3

    :goto_7
    add-float v3, v16, v3

    if-eqz v18, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v16, v3

    :goto_8
    if-ge v1, v2, :cond_a

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    if-ge v1, v5, :cond_a

    if-eqz v4, :cond_9

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0x1

    aput v16, v12, v6

    aget v6, v7, v1

    sub-float v16, v16, v6

    aput v16, v12, v5

    goto :goto_9

    :cond_9
    mul-int/lit8 v5, v1, 0x2

    aput v16, v12, v5

    aget v6, v7, v1

    add-float v16, v16, v6

    add-int/lit8 v5, v5, 0x1

    aput v16, v12, v5

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    if-eq v2, v14, :cond_c

    if-eqz v4, :cond_b

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v5, v1

    move v1, v5

    move v5, v3

    move v3, v1

    goto :goto_a

    :cond_b
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v5, v1

    move v1, v5

    :goto_a
    mul-int/lit8 v6, v2, 0x2

    aput v3, v12, v6

    add-int/lit8 v6, v6, 0x1

    aput v5, v12, v6

    sub-float/2addr v5, v3

    aput v5, v7, v2

    move/from16 v16, v1

    goto :goto_b

    :cond_c
    move/from16 v16, v3

    :goto_b
    add-int/lit8 v1, v2, 0x1

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move v3, v14

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    goto/16 :goto_1

    :cond_e
    :goto_d
    return-void

    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "advance doesn\'t have enough space to receive the result, needed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bounds doesn\'t have enough space to receive the result, needed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bounds can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    new-array v7, v1, [F

    const/4 v13, 0x0

    aget-boolean v1, p1, v13

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    aput v14, v7, v13

    :cond_0
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v15

    move v1, v13

    move v2, v14

    :goto_0
    if-ge v1, v15, :cond_12

    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v1}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v3

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v1}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v5, v1}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v5

    iget v6, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v1, v15, v6}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    iget-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    move/from16 v16, v2

    move v2, v6

    :goto_2
    if-gt v2, v4, :cond_11

    if-eq v2, v4, :cond_4

    invoke-direct {v0, v2}, Landroid/text/TextLine;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v19, v1

    move v12, v4

    move v4, v5

    goto/16 :goto_b

    :cond_4
    :goto_3
    iget v6, v0, Landroid/text/TextLine;->mDir:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_5

    move v6, v12

    goto :goto_4

    :cond_5
    move v6, v13

    :goto_4
    if-ne v6, v5, :cond_6

    move/from16 v17, v12

    goto :goto_5

    :cond_6
    move/from16 v17, v13

    :goto_5
    aget v18, v7, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move v8, v1

    move v1, v3

    move v3, v2

    move/from16 v19, v8

    move v8, v1

    move v12, v4

    move v4, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    if-eqz v17, :cond_7

    goto :goto_6

    :cond_7
    neg-float v3, v3

    :goto_6
    add-float v3, v16, v3

    if-eqz v17, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v16, v3

    :goto_7
    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v1

    :goto_8
    if-gt v6, v5, :cond_e

    if-ge v6, v5, :cond_a

    if-eqz v4, :cond_9

    aget v8, v7, v6

    neg-float v8, v8

    goto :goto_9

    :cond_9
    aget v8, v7, v6

    goto :goto_9

    :cond_a
    move v8, v14

    :goto_9
    if-ne v6, v1, :cond_b

    aget-boolean v9, p1, v6

    if-eqz v9, :cond_b

    aput v18, v7, v6

    goto :goto_a

    :cond_b
    if-ne v6, v5, :cond_c

    aget-boolean v9, p1, v6

    if-eqz v9, :cond_d

    :cond_c
    aput v16, v7, v6

    :cond_d
    :goto_a
    add-float v16, v16, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    if-eq v2, v12, :cond_10

    aget-boolean v1, p1, v2

    if-nez v1, :cond_f

    aput v3, v7, v2

    :cond_f
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float v3, v5, v1

    add-int/lit8 v1, v2, 0x1

    aget-boolean v5, p1, v1

    if-eqz v5, :cond_10

    aput v3, v7, v1

    :cond_10
    add-int/lit8 v1, v2, 0x1

    move/from16 v16, v3

    move v3, v1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v12

    move/from16 v1, v19

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_11
    move/from16 v19, v1

    add-int/lit8 v1, v19, 0x1

    move/from16 v2, v16

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_c
    iget v0, v0, Landroid/text/TextLine;->mLen:I

    aget-boolean v1, p1, v0

    if-nez v1, :cond_13

    aput v2, v7, v0

    :cond_13
    return-object v7
.end method

.method public blacklist metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F
    .locals 6

    if-eqz p3, :cond_4

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    :cond_0
    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    :cond_1
    move-object v4, p2

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p2, p0, p1

    if-ltz p2, :cond_2

    iget p2, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p3, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_2
    iget p2, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float p2, p1, p2

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return p0

    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p2

    return p0

    :cond_4
    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p0

    return p0
.end method

.method greylist-max-o nextTab(F)F
    .locals 0

    iget-object p0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x41a00000    # 20.0f

    invoke-static {p1, p0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result p0

    return p0
.end method

.method public blacklist set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    .locals 1

    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/text/TextLine;->mStart:I

    sub-int v0, p4, p3

    iput v0, p0, Landroid/text/TextLine;->mLen:I

    iput p5, p0, Landroid/text/TextLine;->mDir:I

    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-boolean p11, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz p6, :cond_9

    iput-boolean p7, p0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 p5, 0x0

    iput-object p5, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    instance-of p6, p2, Landroid/text/Spanned;

    const/4 p7, 0x0

    if-eqz p6, :cond_0

    move-object p6, p2

    check-cast p6, Landroid/text/Spanned;

    iput-object p6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object p11, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p11, p6, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget p6, p6, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    move p6, p7

    :goto_0
    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    instance-of p11, p2, Landroid/text/PrecomputedText;

    if-eqz p11, :cond_1

    move-object p11, p2

    check-cast p11, Landroid/text/PrecomputedText;

    iput-object p11, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {p11}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object p11

    invoke-virtual {p11}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p11

    invoke-virtual {p11, p1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_1
    iput-boolean p6, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p6, :cond_6

    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p5, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, p5, :cond_3

    :cond_2
    iget p1, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/TextLine;->mChars:[C

    :cond_3
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    invoke-static {p2, p3, p4, p1, p7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz p6, :cond_6

    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    move p2, p3

    :goto_1
    if-ge p2, p4, :cond_6

    iget-object p5, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p5, p2, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result p5

    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p6, p2, p5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result p6

    if-eqz p6, :cond_5

    sub-int/2addr p2, p3

    if-ge p2, p10, :cond_4

    sub-int p6, p5, p3

    if-gt p6, p9, :cond_5

    :cond_4
    const p6, 0xfffc

    aput-char p6, p1, p2

    add-int/lit8 p2, p2, 0x1

    sub-int p6, p5, p3

    :goto_2
    if-ge p2, p6, :cond_5

    const p11, 0xfeff

    aput-char p11, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    move p2, p5

    goto :goto_1

    :cond_6
    iput-object p8, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 p1, 0x0

    iput p1, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    iput-boolean p7, p0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eq p9, p10, :cond_7

    move p1, p9

    goto :goto_3

    :cond_7
    move p1, p7

    :goto_3
    iput p1, p0, Landroid/text/TextLine;->mEllipsisStart:I

    if-eq p9, p10, :cond_8

    goto :goto_4

    :cond_8
    move p10, p7

    :goto_4
    iput p10, p0, Landroid/text/TextLine;->mEllipsisEnd:I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Directions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    .locals 14

    iget-object v1, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v1, v9

    move v11, v10

    :goto_0
    if-ge v11, v8, :cond_8

    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    iget v3, p0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    iget v3, p0, Landroid/text/TextLine;->mDir:I

    invoke-static {v11, v8, v3}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v7

    iget-boolean v3, p0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    move v13, v1

    :goto_2
    if-gt v3, v12, :cond_7

    if-eq v3, v12, :cond_2

    invoke-direct {p0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_6

    :cond_2
    add-float v5, v9, v13

    add-int/lit8 v1, v8, -0x1

    if-ne v11, v1, :cond_4

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_3

    goto :goto_3

    :cond_3
    move v6, v10

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    move v6, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F

    move-result v2

    add-float/2addr v13, v2

    if-eq v3, v12, :cond_5

    iget v1, p0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v13, v1

    invoke-virtual {p0, v13}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float v13, v2, v1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v1, v13

    goto :goto_0

    :cond_8
    :goto_5
    return-void
.end method
