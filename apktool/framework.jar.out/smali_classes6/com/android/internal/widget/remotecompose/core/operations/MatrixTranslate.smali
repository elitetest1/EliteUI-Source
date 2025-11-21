.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
.source "MatrixTranslate.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixTranslate"

.field private static final blacklist OP_CODE:I = 0x7f


# direct methods
.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;-><init>(FF)V

    const-string p1, "MatrixTranslate"

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mName:Ljava/lang/String;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .locals 1

    const/16 v0, 0x7f

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x7f

    const-string v1, "MatrixTranslate"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Preconcat the current matrix with the specified translation"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dx"

    const-string v1, "The distance to translate in X"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dy"

    const-string v1, "The distance to translate in Y"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "MatrixTranslate"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV1:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV2:F

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixTranslate(FF)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "dx"

    const-string v1, "dy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p0

    const-string p1, "MatrixTranslate"

    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method
