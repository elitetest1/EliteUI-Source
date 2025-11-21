.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextAnchored.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ANCHOR_MONOSPACE_MEASURE:I = 0x2

.field public static final blacklist ANCHOR_TEXT_RTL:I = 0x1

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawTextAnchored"

.field public static final blacklist MEASURE_EVERY_TIME:I = 0x4

.field private static final blacklist OP_CODE:I = 0x85


# instance fields
.field blacklist mBounds:[F

.field blacklist mFlags:I

.field blacklist mLastString:Ljava/lang/String;

.field blacklist mOutPanX:F

.field blacklist mOutPanY:F

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mPanX:F

.field blacklist mPanY:F

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IFFFFI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V
    .locals 1

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x85

    const-string v1, "DrawTextAnchored"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Draw text centered about an anchor point"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "textId"

    const-string v1, "id of bitmap"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "x"

    const-string v1, "The x-position of the anchor point"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "y"

    const-string v1, "The y-position of the anchor point"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "panX"

    const-string v1, "The pan from left(-1) to right(1) 0 being centered"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "panY"

    const-string v1, "The pan from top(-1) to bottom(1) 0 being centered"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "flags"

    const-string v1, "Change the behaviour"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private static blacklist floatToStr(F)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getHorizontalOffset()F
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    sub-float/2addr v3, v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    add-float/2addr p0, v2

    mul-float/2addr v3, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v3, p0

    mul-float/2addr v0, v2

    sub-float/2addr v3, v0

    return v3
.end method

.method private blacklist getVerticalOffset()F
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    sub-float/2addr v3, v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    sub-float p0, v2, p0

    mul-float/2addr v3, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v3, p0

    mul-float/2addr v0, v2

    sub-float/2addr v3, v0

    return v3
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x85

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawTextAnchored"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
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

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;-><init>(IFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mLastString:Ljava/lang/String;

    if-ne v1, v5, :cond_1

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    :cond_1
    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mLastString:Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    const/4 v7, -0x1

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    :cond_2
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getHorizontalOffset()F

    move-result v4

    add-float v15, v1, v4

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getVerticalOffset()F

    move-result v4

    add-float/2addr v1, v4

    :goto_1
    move/from16 v16, v1

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    move/from16 v17, v3

    goto :goto_2

    :cond_4
    move/from16 v17, v2

    :goto_2
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const-string v0, "DrawTextAnchored"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    const-string/jumbo v2, "x"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    const-string/jumbo v2, "y"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    const-string/jumbo v2, "panX"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    const-string/jumbo v2, "panY"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "flags"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawTextAnchored ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    :goto_3
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 7

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method
