.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "Component.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field public blacklist locationInWindow:[F

.field public blacklist mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

.field protected blacklist mAnimationId:I

.field public blacklist mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field protected blacklist mComponentId:I

.field protected blacklist mComponentValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mFirstLayout:Z

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

.field private blacklist mNeedsBoundsAnimation:Z

.field public blacklist mNeedsMeasure:Z

.field public blacklist mNeedsRepaint:Z

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field protected blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field public blacklist mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

.field public blacklist mScheduledVisibility:I

.field public blacklist mVisibility:I

.field protected blacklist mWidth:F

.field protected blacklist mX:F

.field protected blacklist mY:F

.field protected blacklist mZIndex:F


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 8

    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 8

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    iget v4, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v5, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    iget-object p0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->finalizeCreation()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return-void
.end method

.method private blacklist updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getType()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void
.end method

.method public blacklist applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearNeedsBoundsAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    return-void
.end method

.method public blacklist contains(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v2, v0, v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    add-float/2addr v4, v2

    aget v0, v0, v3

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    add-float/2addr p0, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    cmpg-float p1, p1, v4

    if-gez p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public blacklist content()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    const-string v2, "- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v2, v3, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, v0, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    invoke-virtual {p2, v0, p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    invoke-virtual {p2, v0, p1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    invoke-virtual {p2, p0, p1, p0, p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist doesNeedsRepaint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    return p0
.end method

.method public blacklist finalizeCreation()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getAnimationId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist getAnimationId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return p0
.end method

.method protected blacklist getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-object p0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public blacklist getComponentCount()I
    .locals 3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist getComponentId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return p0
.end method

.method public blacklist getComponents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

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

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist getData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist getHeight()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

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

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getLocationInWindow([F)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .locals 3

    const/4 p2, 0x0

    aget v0, p1, p2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    add-float/2addr v0, v1

    aput v0, p1, p2

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    :cond_0
    return-void
.end method

.method public blacklist getPaintId()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return p0
.end method

.method public blacklist getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-object p0
.end method

.method public blacklist getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    :goto_0
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "No RootLayoutComponent found"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object p0
.end method

.method public blacklist getScrollX()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getScrollY()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .locals 0

    const-string p0, "COMPONENT"

    return-object p0
.end method

.method public blacklist getTranslateX()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    sub-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getTranslateY()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    sub-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getWidth()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    return p0
.end method

.method public blacklist getX()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    return p0
.end method

.method public blacklist getY()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return p0
.end method

.method public blacklist getZIndex()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    return p0
.end method

.method public blacklist inflate()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    :goto_0
    if-eqz p0, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist isGone()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isInvisible()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result p0

    return p0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 13

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v7

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v5, v1

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    move-object v6, v2

    iget-wide v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v11

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v12

    move-object v4, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;-><init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V

    iput-object v1, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    goto :goto_0

    :cond_0
    move-object v4, p0

    goto :goto_0

    :cond_1
    move-object v4, p0

    iget-wide v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V

    goto :goto_0

    :cond_2
    move-object v4, p0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result p0

    iput p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    :goto_0
    iget-object p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p0

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p0

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p2

    invoke-virtual {v4, p0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setLayoutPosition(FF)V

    invoke-direct {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-direct {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    :goto_1
    const/4 p0, 0x0

    iput-boolean p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    return-void
.end method

.method public blacklist markNeedsBoundsAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    :cond_0
    return-void
.end method

.method public blacklist maxIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result p0

    return p0
.end method

.method public blacklist maxIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result p0

    return p0
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 0

    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result p0

    return p0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result p0

    return p0
.end method

.method public blacklist needsBoundsAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    return p0
.end method

.method public blacklist needsMeasure()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    return p0
.end method

.method public blacklist needsRepaint()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .locals 8

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    cmpl-float v4, p4, v0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    and-int/2addr v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_6

    :cond_2
    if-eqz v1, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float/2addr p3, v2

    move v6, p3

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float v0, p4, p3

    :goto_3
    move v7, v0

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_5

    move-object v0, p4

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2, v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    :cond_5
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v0, :cond_6

    move-object v2, p4

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_5

    :cond_6
    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    :goto_5
    move-object p1, v3

    move-object p2, v4

    move-object p0, v5

    goto :goto_4

    :cond_7
    :goto_6
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .locals 8

    if-nez p5, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v4, p3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float p3, p4, p3

    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of p4, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz p4, :cond_1

    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move p4, v4

    instance-of p5, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p5, :cond_2

    move p5, p3

    move-object p3, p0

    move-object p0, v7

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move-object v1, p3

    move p3, p5

    goto :goto_2

    :cond_2
    move-object v1, p0

    :goto_2
    move-object v3, p2

    instance-of p0, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p0, :cond_3

    move-object p0, v7

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    move p2, p4

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move p4, p2

    :cond_3
    move v4, p4

    move-object p0, v1

    move-object p2, v3

    move p5, v6

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .locals 7

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v5, p3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result p3

    sub-float v6, p4, p3

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    :cond_1
    instance-of v0, p4, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v0, :cond_2

    move-object v1, p4

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_2
    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    :goto_1
    instance-of p0, p4, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p0, :cond_3

    check-cast p4, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {p4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p4, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    :cond_3
    move-object p1, v2

    move-object p2, v3

    move-object p0, v4

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .locals 8

    if-nez p5, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v4, p3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v5, p4, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    goto :goto_1

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move p1, p5

    :goto_1
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_2

    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_2

    :cond_2
    move v6, v5

    move v5, v4

    move-object v4, p0

    :goto_2
    instance-of p0, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p0, :cond_3

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v7, v2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    :cond_3
    move p5, p1

    move-object p1, v2

    move-object p2, v3

    move-object p0, v4

    move v4, v5

    move v5, v6

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V
    .locals 11

    if-nez p7, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float v5, p3, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v8, p4, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v4, p1

    move/from16 v9, p6

    move/from16 v10, p7

    move v6, v5

    move v7, v8

    move-object v5, p2

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    move v5, v6

    move v8, v7

    :cond_2
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v6, p0

    move-object v4, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move v7, v5

    move-object v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    move v5, v7

    :cond_3
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    move-object v4, p1

    move/from16 v7, p5

    move v6, v8

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move v8, v6

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v4, v3, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v0, v3, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v3, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isGone()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    :cond_2
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    const-string v0, "list"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setAnimationId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return-void
.end method

.method protected blacklist setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-void
.end method

.method public blacklist setComponentId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return-void
.end method

.method public blacklist setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    return-void
.end method

.method public blacklist setLayoutPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return-void
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-void
.end method

.method public blacklist setVisibility(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:I

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->invalidateMeasure()V

    return-void
.end method

.method public blacklist setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    return-void
.end method

.method public blacklist setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    return-void
.end method

.method public blacklist setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return-void
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_2

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist textContent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COMPONENT(<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->textContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Visibility ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_0
    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    return-void
.end method
