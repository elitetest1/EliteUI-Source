.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
.super Ljava/lang/Object;
.source "MeasurePass.java"


# instance fields
.field blacklist mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Component has no id!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist clear()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public blacklist contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    move v2, p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    return-object p0
.end method

.method public blacklist get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFF)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    return-object p0
.end method
