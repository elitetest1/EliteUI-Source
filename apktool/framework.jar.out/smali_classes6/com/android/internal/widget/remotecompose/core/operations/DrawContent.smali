.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawContent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawContent"

.field private static final blacklist OP_CODE:I = 0x8b


# instance fields
.field private blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 1

    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x8b

    const-string v1, "DrawContent"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Draw the component content"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x8b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawContent"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->drawContent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 0

    const-string p0, "DrawContent"

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DrawContent;"

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method
