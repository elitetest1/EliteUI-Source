.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ComponentStart.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field public static final blacklist BUTTON:I = 0x5

.field public static final blacklist CHECKBOX:I = 0x6

.field public static final blacklist CURVED_TEXT:I = 0x8

.field public static final blacklist CUSTOM:I = 0xa

.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist IMAGE:I = 0xc

.field public static final blacklist LAYOUT:I = 0x2

.field public static final blacklist LAYOUT_BOX:I = 0xe

.field public static final blacklist LAYOUT_COLUMN:I = 0x10

.field public static final blacklist LAYOUT_CONTENT:I = 0x3

.field public static final blacklist LAYOUT_ROW:I = 0xf

.field public static final blacklist LOTTIE:I = 0xb

.field public static final blacklist ROOT_LAYOUT:I = 0x1

.field public static final blacklist SCROLL_CONTENT:I = 0x4

.field public static final blacklist STATE_BOX_CONTENT:I = 0xd

.field public static final blacklist STATE_HOST:I = 0x9

.field public static final blacklist TEXT:I = 0x7

.field public static final blacklist UNKNOWN:I = -0x1


# instance fields
.field blacklist mComponentId:I

.field blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mType:I

.field blacklist mWidth:F

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Basic component encapsulating draw commands.This is not resizable."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "TYPE"

    const-string v1, "Type of components"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COMPONENT_ID"

    const-string/jumbo v1, "unique id for this component"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "WIDTH"

    const-string/jumbo v1, "width of the component"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "HEIGHT"

    const-string v1, "height of the component"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ComponentStart"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;-><init>(IIFF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static blacklist size()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public static blacklist typeDescription(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "IMAGE"

    return-object p0

    :pswitch_1
    const-string p0, "LOTTIE"

    return-object p0

    :pswitch_2
    const-string p0, "CUSTOM"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_HOST"

    return-object p0

    :pswitch_4
    const-string p0, "CURVED_TEXT"

    return-object p0

    :pswitch_5
    const-string p0, "TEXT"

    return-object p0

    :pswitch_6
    const-string p0, "CHECKBOX"

    return-object p0

    :pswitch_7
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_8
    const-string p0, "SCROLL_CONTENT"

    return-object p0

    :pswitch_9
    const-string p0, "CONTENT"

    return-object p0

    :pswitch_a
    const-string p0, "LAYOUT"

    return-object p0

    :pswitch_b
    const-string p0, "ROOT_LAYOUT"

    return-object p0

    :pswitch_c
    const-string p0, "DEFAULT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getComponentId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    return p0
.end method

.method public blacklist getHeight()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    return p0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    return p0
.end method

.method public blacklist getWidth()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    return p0
.end method

.method public blacklist getX()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    return p0
.end method

.method public blacklist getY()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COMPONENT_START (type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->typeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method
