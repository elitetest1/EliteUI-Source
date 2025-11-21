.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "MatrixScale.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixScale"

.field private static final blacklist OP_CODE:I = 0x7e


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    const-string p1, "MatrixScale"

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mName:Ljava/lang/String;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .locals 6

    const/16 v1, 0x7e

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x7e

    const-string v1, "MatrixScale"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Scale the following draw commands"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "scaleX"

    const-string v1, "The amount to scale in X"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "scaleY"

    const-string v1, "The amount to scale in Y"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "pivotX"

    const-string v1, "The x-coordinate for the pivot point"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "pivotY"

    const-string v1, "The y-coordinate for the pivot point"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x7e

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "MatrixScale"

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

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mX2:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mY2:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixScale(FFFF)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 6

    const-string/jumbo v4, "pivotX"

    const-string/jumbo v5, "pivotY"

    const-string/jumbo v2, "scaleX"

    const-string/jumbo v3, "scaleY"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p0

    const-string p1, "MatrixScale"

    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method
