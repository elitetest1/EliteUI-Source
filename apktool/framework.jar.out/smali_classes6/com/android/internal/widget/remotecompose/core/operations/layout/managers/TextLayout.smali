.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "TextLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist OVERFLOW_CLIP:I = 0x1

.field public static final blacklist OVERFLOW_ELLIPSIS:I = 0x3

.field public static final blacklist OVERFLOW_MIDDLE_ELLIPSIS:I = 0x5

.field public static final blacklist OVERFLOW_START_ELLIPSIS:I = 0x4

.field public static final blacklist OVERFLOW_VISIBLE:I = 0x2

.field public static final blacklist TEXT_ALIGN_CENTER:I = 0x3

.field public static final blacklist TEXT_ALIGN_END:I = 0x6

.field public static final blacklist TEXT_ALIGN_JUSTIFY:I = 0x4

.field public static final blacklist TEXT_ALIGN_LEFT:I = 0x1

.field public static final blacklist TEXT_ALIGN_RIGHT:I = 0x2

.field public static final blacklist TEXT_ALIGN_START:I = 0x5


# instance fields
.field private final blacklist mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

.field private blacklist mCachedString:Ljava/lang/String;

.field private blacklist mColor:I

.field blacklist mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

.field private blacklist mFontFamilyId:I

.field private blacklist mFontSize:F

.field private blacklist mFontStyle:I

.field private blacklist mFontWeight:F

.field private blacklist mMaxLines:I

.field private blacklist mNewString:Ljava/lang/String;

.field private blacklist mOverflow:I

.field public blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field private blacklist mTextAlign:I

.field private blacklist mTextH:F

.field private blacklist mTextId:I

.field private blacklist mTextW:F

.field private blacklist mTextX:F

.field private blacklist mTextY:F

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    const/high16 p3, 0x41800000    # 16.0f

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/high16 p2, 0x43c80000    # 400.0f

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    iput p12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    iput p13, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    iput p14, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iput p15, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    move/from16 p1, p16

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V
    .locals 17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V
    .locals 1

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Text layout implementation.\n\n"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COMPONENT_ID"

    const-string/jumbo v1, "unique id for this component"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "ANIMATION_ID"

    const-string v1, "id used to match components, for animation purposes"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COLOR"

    const-string/jumbo v1, "text color"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "FONT_SIZE"

    const-string v1, "font size"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "FONT_STYLE"

    const-string v1, "font style (0 = normal, 1 = italic)"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "FONT_WEIGHT"

    const-string v1, "font weight (1-1000, normal = 400)"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "FONT_FAMILY_ID"

    const-string v1, "font family id"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0xd0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TextLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 8

    invoke-super/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v3, v3

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    const/4 v1, 0x4

    new-array v7, v1, [F

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    :cond_1
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    const/16 v4, 0xe

    const/4 v13, 0x3

    if-ne v3, v12, :cond_4

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    if-eq v3, v1, :cond_3

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    if-ne v3, v13, :cond_4

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    const/4 v1, 0x6

    :goto_1
    and-int/lit8 v3, v1, 0x8

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    move v3, v11

    :goto_2
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v9, v4

    move v1, v12

    goto :goto_4

    :cond_7
    move v9, v1

    move v1, v11

    :goto_4
    if-nez v1, :cond_8

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    :cond_8
    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-nez v1, :cond_a

    aget v1, v14, v16

    aget v2, v14, v12

    sub-float/2addr v1, v2

    cmpl-float v1, v1, p2

    if-lez v1, :cond_9

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    if-le v1, v12, :cond_9

    cmpl-float v1, p2, v15

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    move/from16 v8, p2

    goto :goto_6

    :cond_a
    :goto_5
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v2, :cond_b

    aput v15, v14, v11

    aput v15, v14, v12

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getWidth()F

    move-result v1

    aput v1, v14, v16

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getHeight()F

    move-result v1

    aput v1, v14, v13

    :cond_b
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    aget v1, v14, v16

    aget v2, v14, v11

    sub-float/2addr v1, v2

    aget v2, v14, v13

    aget v3, v14, v12

    sub-float/2addr v2, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    aget v3, v14, v11

    neg-float v3, v3

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    move/from16 v3, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    aget v3, v14, v12

    neg-float v3, v3

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .locals 0

    const-string p0, "TEXT_LAYOUT"

    return-object p0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    return p0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    return p0
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->startGraphicsLayer(II)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->fillInAttributes(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->setGraphicsLayer(Ljava/util/HashMap;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move v4, v8

    :cond_1
    invoke-virtual {v3, v5, v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V

    move-object v4, p1

    goto/16 :goto_2

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    :goto_0
    move v10, v3

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float/2addr v3, v4

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingBottom:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto :goto_2

    :cond_6
    move-object v4, p1

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz p0, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->endGraphicsLayer()V

    :cond_7
    neg-float p0, v1

    neg-float p1, v2

    invoke-virtual {v4, p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontSize"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontStyle"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontWeight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontFamilyId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "textAlign"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TEXT_LAYOUT ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sans-serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "monospace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->invalidateMeasure()V

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 12

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    return-void
.end method
