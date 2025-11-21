.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MeasuredParagraph$StyleRunCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBidi:Landroid/icu/text/Bidi;

.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private final greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private final blacklist mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 7

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_3

    move v2, v0

    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_3

    aget-object v3, p3, v2

    instance-of v4, v3, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object p3, v1

    if-eqz p4, :cond_5

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v1, p2}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    array-length p2, p4

    :goto_3
    if-ge v0, p2, :cond_4

    aget-object v1, p4, v0

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {p2}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object p2

    :cond_5
    move-object v4, p2

    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int p4, p5, p2

    sub-int p5, p6, p2

    if-eqz p7, :cond_6

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object p6, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p2, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_6
    if-eqz p3, :cond_7

    iget-object p6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    goto :goto_4

    :cond_7
    move-object p2, p0

    iget-object v3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p2

    move v1, p4

    move v2, p5

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    :goto_4
    if-eqz p1, :cond_9

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p0, p0, Landroid/text/TextPaint;->baselineShift:I

    if-gez p0, :cond_8

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_5

    :cond_8
    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_5
    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p0, p1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {p0, p1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0, p1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object p0, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0, p1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    :cond_9
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 6

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    if-nez p5, :cond_1

    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4, p2, p1}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    add-int/lit8 p4, p2, 0x1

    if-le p3, p4, :cond_0

    iget-object p5, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p5}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {p5, p4, p3, v0}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_0
    iget p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr p4, p1

    iput p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    :cond_1
    sub-int p0, p3, p2

    invoke-virtual {p5, v1, p0, p1}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    :goto_0
    if-eqz p6, :cond_2

    sub-int/2addr p3, p2

    invoke-interface {p6, v1, p3, p1}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendReplacementRun(Landroid/graphics/Paint;IF)V

    :cond_2
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v10, p2

    move-object/from16 v1, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    iget-boolean v2, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    if-nez v12, :cond_0

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v12

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    :try_start_0
    iget v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v10, p1

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    const/4 v7, 0x0

    move/from16 v5, p1

    move v6, v4

    move/from16 v9, p1

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float/2addr v15, v2

    iput v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setFlags(I)V

    throw v0

    :cond_0
    move/from16 v3, p1

    sub-int v0, v10, v3

    invoke-virtual {v12, v1, v11, v0, v14}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    :goto_0
    if-eqz v13, :cond_6

    sub-int v0, v10, v3

    invoke-interface {v13, v1, v11, v0, v14}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    return-void

    :cond_1
    move/from16 v3, p1

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v2

    add-int/lit8 v4, v3, 0x1

    move v15, v4

    :goto_1
    if-eq v15, v10, :cond_2

    iget-object v4, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v4, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v4

    if-eq v4, v2, :cond_8

    :cond_2
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v14

    :goto_2
    if-nez v12, :cond_4

    sub-int v4, v15, v3

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x6000

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFlags(I)V

    :try_start_1
    iget v5, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v6, v2

    :try_start_2
    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v9, v5

    move v5, v3

    move/from16 v16, v6

    move v6, v4

    move/from16 v17, v9

    move v9, v3

    move/from16 v14, v16

    :try_start_3
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v5, v17, v2

    iput v5, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move v14, v6

    goto :goto_3

    :catchall_3
    move-exception v0

    move v14, v2

    :goto_3
    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setFlags(I)V

    throw v0

    :cond_4
    sub-int v2, v15, v3

    invoke-virtual {v12, v1, v11, v2, v7}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    :goto_4
    if-eqz v13, :cond_5

    sub-int v2, v15, v3

    invoke-interface {v13, v1, v11, v2, v7}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    :cond_5
    if-ne v15, v10, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v2

    move v3, v15

    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 0

    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p4

    :cond_0
    invoke-direct {p4, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    return-object p4
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 9

    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p5

    :cond_0
    move-object v0, p5

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget p4, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p4}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    iget p1, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez p1, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    return-object v0

    :cond_2
    move-object v1, p0

    move v5, p2

    move p0, p3

    :goto_0
    if-ge v5, p0, :cond_3

    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p1, v5, p0, p2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    iget-object p2, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p2, v5, p0, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p1, v5, v6, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/MetricAffectingSpan;

    iget-object p2, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p2, v5, v6, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/LineBreakConfigSpan;

    iget-object p3, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {p1, p3, p4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {p2, p1, p3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move v5, v6

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 0

    if-nez p10, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p10

    :cond_0
    invoke-direct {p10, p2, p3, p4, p5}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    if-nez p9, :cond_1

    new-instance p2, Landroid/graphics/text/MeasuredText$Builder;

    iget-object p5, p10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {p2, p5}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    invoke-virtual {p2, p6}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    invoke-virtual {p2, p8}, Landroid/graphics/text/MeasuredText$Builder;->setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/graphics/text/MeasuredText$Builder;

    iget-object p5, p9, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {p2, p5}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    :goto_0
    move-object p7, p2

    iget p2, p10, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez p2, :cond_2

    invoke-virtual {p7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object p0

    iput-object p0, p10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object p10

    :cond_2
    iget-object p2, p10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez p2, :cond_3

    move p5, p3

    const/4 p3, 0x0

    move p6, p4

    const/4 p4, 0x0

    move-object p2, p1

    move-object p8, p11

    move-object p1, p0

    move-object p0, p10

    invoke-direct/range {p0 .. p8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move p9, p6

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p1, p9}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto :goto_2

    :cond_3
    move-object p2, p1

    move p5, p3

    move p9, p4

    move-object p8, p11

    move-object p1, p0

    move-object p0, p10

    :goto_1
    if-ge p5, p9, :cond_4

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, p5, p9, p4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p6, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p4, p5, p9, p6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p6

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, p5, p6, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/MetricAffectingSpan;

    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p10, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p4, p5, p6, p10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/LineBreakConfigSpan;

    iget-object p10, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p11, Landroid/text/style/MetricAffectingSpan;

    invoke-static {p3, p10, p11}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/MetricAffectingSpan;

    iget-object p10, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p11, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {p4, p10, p11}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/LineBreakConfigSpan;

    invoke-direct/range {p0 .. p8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p3, p6}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move p5, p6

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object p1

    iput-object p1, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object p0
.end method

.method public static blacklist buildForStaticLayoutTest(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .locals 1

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/MeasuredParagraph;

    invoke-direct {v0}, Landroid/text/MeasuredParagraph;-><init>()V

    return-object v0
.end method

.method private greylist-max-o reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 9

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    :cond_1
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    :cond_2
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const v0, 0xfffc

    if-eqz p1, :cond_5

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ReplacementSpan;

    move p3, v1

    :goto_1
    array-length v2, p1

    if-ge p3, v2, :cond_5

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v3, p1, p3

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, p1, p3

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    if-gez v2, :cond_3

    move v2, v1

    :cond_3
    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v3, v4, :cond_4

    move v3, v4

    :cond_4
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v4, v2, v3, v0}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 p2, 0x1

    if-eq p4, p1, :cond_6

    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, p1, :cond_6

    sget-object p1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_7

    :cond_6
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-static {p1, v1, p3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iput-boolean p2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    return-void

    :cond_7
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_8

    move v8, v1

    goto :goto_3

    :cond_8
    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_9

    move v8, p2

    goto :goto_3

    :cond_9
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_a

    const/16 p1, 0x7e

    :goto_2
    move v8, p1

    goto :goto_3

    :cond_a
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_b

    const/16 p1, 0x7f

    goto :goto_2

    :cond_b
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, p1, v1, p3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result p1

    goto :goto_2

    :goto_3
    new-instance v2, Landroid/icu/text/Bidi;

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v6, 0x0

    array-length v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length p3, p1

    if-lez p3, :cond_f

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {v2, p1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result p1

    if-eqz p1, :cond_f

    move p1, v1

    :goto_4
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge p1, p2, :cond_e

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char p2, p2, p1

    invoke-static {p2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char p2, p2, p1

    invoke-static {p2}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_d

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aput-char v0, p2, p1

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    new-instance v2, Landroid/icu/text/Bidi;

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v6, 0x0

    array-length v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    :cond_f
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object p1

    move p2, v1

    :goto_6
    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge p2, p3, :cond_10

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {p3, p2}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result p3

    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_10
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .locals 5

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v3, v0, p2

    sub-float/2addr p3, v3

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez p2, :cond_2

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 p3, p2, -0x1

    aget-char p1, p1, p3

    if-ne p1, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    add-int/lit8 p2, p1, -0x1

    move v3, p2

    :goto_2
    if-ltz v3, :cond_5

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v3, p2, :cond_7

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char p3, p3, v4

    if-eq p3, v1, :cond_6

    aget p3, v0, v4

    cmpl-float p3, p3, v2

    if-nez p3, :cond_7

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {p0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result p0

    return p0
.end method

.method public greylist-max-o getChars()[C
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object p0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .locals 7

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    if-nez v0, :cond_0

    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_1

    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result p0

    if-ne p0, v1, :cond_3

    sget-object p0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_4
    new-instance p0, Landroid/text/Layout$Directions;

    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1a

    sub-int/2addr p2, p1

    or-int p1, v0, p2

    filled-new-array {v3, p1}, [I

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object p0

    :cond_5
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result p1

    new-array p1, p1, [B

    move p2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ge p2, v2, :cond_6

    invoke-virtual {v0, p2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object p1

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    :goto_1
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget v2, p1, v2

    goto :goto_2

    :cond_7
    aget v2, p1, v3

    :goto_2
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v5

    aput v5, p2, v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1a

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v2

    aget v4, p2, v4

    sub-int/2addr v2, v4

    or-int/2addr v2, v6

    aput v2, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    new-instance p0, Landroid/text/Layout$Directions;

    invoke-direct {p0, p2}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object p0
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object p0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object p0
.end method

.method public greylist-max-o getMemoryUsage()I
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {p0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getParagraphDir()I
    .locals 1

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object p0
.end method

.method public greylist-max-o getTextLength()I
    .locals 0

    iget p0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return p0
.end method

.method public greylist-max-o getWholeWidth()F
    .locals 0

    iget p0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return p0
.end method

.method public greylist-max-o getWidth(II)F
    .locals 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    aget v1, p0, p1

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result p0

    return p0
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 0

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object p0
.end method

.method greylist-max-o measure(II)F
    .locals 2

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    aget v1, p0, p1

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o release()V
    .locals 1

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    return-void
.end method
