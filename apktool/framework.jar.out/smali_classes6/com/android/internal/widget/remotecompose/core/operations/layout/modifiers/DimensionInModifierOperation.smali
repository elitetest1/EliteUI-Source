.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DimensionInModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# instance fields
.field blacklist mOpCode:I

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mValue1:F

.field blacklist mValue2:F


# direct methods
.method public constructor blacklist <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mOpCode:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    :cond_0
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    :cond_1
    return-void
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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMax()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    return p0
.end method

.method public blacklist getMin()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    return p0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIDTH_IN = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->getMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->getMax()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    :cond_3
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    return-void
.end method
