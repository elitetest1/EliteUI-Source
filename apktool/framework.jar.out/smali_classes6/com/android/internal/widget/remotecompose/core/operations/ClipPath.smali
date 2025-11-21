.class public Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ClipPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ClipPath"

.field public static final blacklist DIFFERENCE:I = 0x1

.field public static final blacklist INTERSECT:I = 0x2

.field private static final blacklist OP_CODE:I = 0x26

.field public static final blacklist PATH_CLIP_DIFFERENCE:I = 0x1

.field public static final blacklist PATH_CLIP_INTERSECT:I = 0x2

.field public static final blacklist PATH_CLIP_REPLACE:I = 0x0

.field public static final blacklist PATH_CLIP_REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist PATH_CLIP_UNDEFINED:I = 0x6

.field public static final blacklist PATH_CLIP_UNION:I = 0x3

.field public static final blacklist PATH_CLIP_XOR:I = 0x4

.field public static final blacklist REPLACE:I = 0x0

.field public static final blacklist REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist UNDEFINED:I = 0x6

.field public static final blacklist UNION:I = 0x3

.field public static final blacklist XOR:I = 0x4


# instance fields
.field blacklist mId:I

.field blacklist mRegionOp:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x26

    const-string v1, "ClipPath"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Intersect the current clip with the path"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of the path"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ClipPath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 2
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

    move-result p0

    const v0, 0xfffff

    and-int/2addr v0, p0

    shr-int/lit8 p0, p0, 0x18

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipPath(II)V

    return-void
.end method

.method blacklist regionOpToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    :cond_0
    const-string p0, "REVERSE_DIFFERENCE"

    return-object p0

    :cond_1
    const-string p0, "XOR"

    return-object p0

    :cond_2
    const-string p0, "INTERSECT"

    return-object p0

    :cond_3
    const-string p0, "DIFFERENCE"

    return-object p0

    :cond_4
    const-string p0, "REPLACE"

    return-object p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "ClipPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "regionOp"

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->regionOpToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClipPath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method
