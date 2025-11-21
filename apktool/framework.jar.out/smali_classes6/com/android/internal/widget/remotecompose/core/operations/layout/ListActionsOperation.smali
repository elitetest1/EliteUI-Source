.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ListActionsOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# instance fields
.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocationInWindow:[F

.field blacklist mOperationName:Ljava/lang/String;

.field protected blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist applyActions(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p6, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result p6

    if-nez p6, :cond_1

    return v0

    :cond_1
    iget-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    const/4 v1, 0x0

    aput v1, p6, v0

    const/4 v0, 0x1

    aput v1, p6, v0

    invoke-virtual {p3, p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, p6, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v1, :cond_2

    move-object v2, p6

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_2
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move p5, v7

    goto :goto_0

    :cond_3
    return v0
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 0

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const-string v0, "actions"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    return-object p0
.end method
