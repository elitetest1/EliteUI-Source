.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapLookup.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapLookup"

.field private static final blacklist OP_CODE:I = 0x9a


# instance fields
.field public blacklist mDataMapId:I

.field public blacklist mId:I

.field public blacklist mStringId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .locals 1

    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0x9a

    const-string v1, "DataMapLookup"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Look up a value in a data map"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of float"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dataMapId"

    const-string v1, "32-bit float value"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "stringId"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x9a

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DataMapLookup"

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

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;-><init>(III)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getPos(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getType(I)B

    move-result v2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getId(I)I

    move-result v0

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->getValue()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    return-void

    :cond_2
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_3
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    return-void

    :cond_4
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataMapLookup["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return-void
.end method
