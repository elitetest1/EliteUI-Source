.class public Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TextMeasure.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextMeasure"

.field public static final blacklist MEASURE_BOTTOM:I = 0x5

.field public static final blacklist MEASURE_HEIGHT:I = 0x1

.field public static final blacklist MEASURE_LEFT:I = 0x2

.field public static final blacklist MEASURE_MAX_HEIGHT_FLAG:I = 0x200

.field public static final blacklist MEASURE_MONOSPACE_FLAG:I = 0x100

.field public static final blacklist MEASURE_RIGHT:I = 0x3

.field public static final blacklist MEASURE_TOP:I = 0x4

.field public static final blacklist MEASURE_WIDTH:I = 0x0

.field private static final blacklist OP_CODE:I = 0x9b


# instance fields
.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTextId:I

.field public blacklist mType:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .locals 1

    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x9b

    const-string v1, "TextMeasure"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Measure text"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of float result of the measure"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "textId"

    const-string v1, "id of text"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "type: measure 0=width,1=height"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x9b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TextMeasure"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 3
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

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;-><init>(III)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID_TYPE"

    return-object p0

    :cond_0
    const-string p0, "MEASURE_BOTTOM"

    return-object p0

    :cond_1
    const-string p0, "MEASURE_TOP"

    return-object p0

    :cond_2
    const-string p0, "MEASURE_RIGHT"

    return-object p0

    :cond_3
    const-string p0, "MEASURE_LEFT"

    return-object p0

    :cond_4
    const-string p0, "MEASURE_HEIGHT"

    return-object p0

    :cond_5
    const-string p0, "MEASURE_WIDTH"

    return-object p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v6, v0, 0x8

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    if-eqz v1, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-eq v1, v0, :cond_3

    if-eq v1, v3, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p0, p0, v3

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p0, p0, v4

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p0, p0, v0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p0, p0, p1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v1, p0, v3

    aget p0, p0, v4

    sub-float/2addr v1, p0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v0, p0, v0

    aget p0, p0, p1

    sub-float/2addr v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "TextMeasure"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "measureType"

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->typeToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatConstant["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return-void
.end method
