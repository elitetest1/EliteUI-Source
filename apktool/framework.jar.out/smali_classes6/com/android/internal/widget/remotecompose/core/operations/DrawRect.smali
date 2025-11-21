.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "DrawRect.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawRect"

.field private static final blacklist OP_CODE:I = 0x2a


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    const-string p1, "DrawRect"

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mName:Ljava/lang/String;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .locals 6

    const/16 v1, 0x2a

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x2a

    const-string v1, "DrawRect"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Draw the specified rectangle"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "left"

    const-string v1, "The left side of the rectangle"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "top"

    const-string v1, "The top of the rectangle"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "right"

    const-string v1, "The right side of the rectangle"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "bottom"

    const-string v1, "The bottom of the rectangle"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawRect"

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

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX2:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY2:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRect(FFFF)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 6

    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p0

    const-string p1, "DrawRect"

    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method
