.class Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;
.super Ljava/lang/Object;
.source "GraphicsLayerModifierOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributeValue"
.end annotation


# instance fields
.field blacklist mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mDefaultValue:F

.field blacklist mId:I

.field blacklist mIntDefaultValue:I

.field blacklist mIntValue:I

.field blacklist mName:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    return-void
.end method


# virtual methods
.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    :cond_0
    return-void
.end method

.method public blacklist getIntValue()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getObjectValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getValue()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    return p0

    :cond_1
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    int-to-float p0, p0

    return p0
.end method

.method public blacklist needsToWrite()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    cmpl-float p0, v0, p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    if-eq v0, p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public blacklist setValue(F)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    return-void
.end method

.method public blacklist setValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    :cond_1
    return-void
.end method
