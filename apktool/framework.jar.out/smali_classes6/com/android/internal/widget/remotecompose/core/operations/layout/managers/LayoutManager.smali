.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.source "LayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;


# instance fields
.field blacklist mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    return-void
.end method

.method private blacklist hasHorizontalScroll()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result p0

    return p0
.end method

.method private blacklist hasVerticalScroll()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result p0

    return p0
.end method

.method private blacklist measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v2, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v5

    :cond_0
    move v10, v2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v2, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v2, v4

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v2, v10, v2

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v4, v11, v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v12

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v13

    const/4 v14, 0x0

    if-nez v12, :cond_3

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v6, p6

    move v15, v2

    move v2, v3

    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v1

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    move-object/from16 v6, p6

    move v3, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    move v15, v2

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v2, v1, :cond_4

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    :cond_4
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v1

    if-eqz v12, :cond_5

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    :cond_5
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    if-eqz v13, :cond_6

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    :cond_6
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v10

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :cond_8
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v11

    goto :goto_4

    :cond_9
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_4

    :cond_a
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_4
    cmpl-float v4, v8, v10

    if-nez v4, :cond_b

    move v8, v10

    goto :goto_5

    :cond_b
    move v8, v1

    :goto_5
    cmpl-float v1, v9, v11

    if-nez v1, :cond_c

    move v9, v11

    goto :goto_6

    :cond_c
    move v9, v2

    :goto_6
    if-nez v5, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move v1, v11

    move v11, v3

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto :goto_7

    :cond_d
    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    :goto_7
    move-object/from16 v6, p6

    goto/16 :goto_9

    :cond_e
    move v11, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v2, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    move v10, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v9, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_8

    :cond_f
    move v10, v8

    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    :goto_8
    move-object/from16 v6, p6

    goto :goto_a

    :cond_10
    move v10, v8

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v8, v10, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v8, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v9, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_a

    :cond_11
    :goto_9
    move v10, v8

    :goto_a
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    :cond_12
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void
.end method

.method private blacklist measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v2, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v5

    :cond_0
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v4, v5

    :cond_1
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v6

    move/from16 v7, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v8, v6

    goto :goto_0

    :cond_2
    move/from16 v7, p2

    move v8, v7

    :goto_0
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v6

    move/from16 v7, p4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v9, v6

    goto :goto_1

    :cond_3
    move/from16 v7, p4

    move v9, v7

    :goto_1
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v5, v2, v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v10, v5, v6

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v5, v4, v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v11, v5, v6

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    move v1, v2

    :goto_2
    move v12, v7

    goto :goto_5

    :cond_4
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_5
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v7

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v6

    :goto_4
    move v12, v5

    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v4

    :goto_6
    move v13, v7

    goto :goto_8

    :cond_8
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_6

    :cond_9
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    move v6, v7

    :cond_b
    :goto_7
    move v13, v6

    :goto_8
    cmpl-float v5, v8, v2

    if-nez v5, :cond_c

    move v14, v2

    goto :goto_9

    :cond_c
    move v14, v1

    :goto_9
    cmpl-float v1, v9, v4

    if-nez v1, :cond_d

    move v15, v4

    goto :goto_a

    :cond_d
    move v15, v3

    :goto_a
    const/4 v1, 0x0

    if-nez v12, :cond_13

    if-eqz v13, :cond_e

    goto/16 :goto_c

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v4

    const/4 v4, 0x0

    move-object/from16 v6, p6

    move v12, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v14, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto/16 :goto_b

    :cond_f
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_b

    :cond_10
    move v12, v1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v15, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_b

    :cond_11
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_b

    :cond_12
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v14, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v1, v2

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v15, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    :goto_b
    move-object/from16 v6, p6

    move v10, v12

    goto :goto_d

    :cond_13
    :goto_c
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v4

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    move-object/from16 v6, p6

    move v2, v10

    move v3, v11

    move v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v2, v1, :cond_14

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    :cond_14
    if-eqz v12, :cond_15

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :cond_15
    if-eqz v13, :cond_16

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :cond_16
    :goto_d
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    invoke-virtual {v1, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    :cond_17
    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void
.end method


# virtual methods
.method public blacklist applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist childrenHaveHorizontalWeights()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist childrenHaveVerticalWeights()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 0

    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 0

    return-void
.end method

.method protected blacklist hasHorizontalIntrinsicDimension()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result p0

    return p0
.end method

.method protected blacklist hasVerticalIntrinsicDimension()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result p0

    return p0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 0

    return-void
.end method

.method public blacklist isInHorizontalFill()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isFill()Z

    move-result p0

    return p0
.end method

.method public blacklist isInVerticalFill()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isFill()Z

    move-result p0

    return p0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {v1, p1, p0, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->supportsVersion(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    return-void
.end method
