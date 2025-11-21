.class public Lcom/android/internal/widget/MaxHeightFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaxHeightFrameLayout.java"


# instance fields
.field private blacklist mMaxHeight:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    sget-object v1, Lcom/android/internal/R$styleable;->MaxHeightFrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v4, Lcom/android/internal/R$styleable;->MaxHeightFrameLayout:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/MaxHeightFrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x0

    invoke-virtual {v6, p0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/MaxHeightFrameLayout;->setMaxHeight(I)V

    return-void
.end method


# virtual methods
.method public blacklist getMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    return p0
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    if-le v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public blacklist setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    return-void
.end method
