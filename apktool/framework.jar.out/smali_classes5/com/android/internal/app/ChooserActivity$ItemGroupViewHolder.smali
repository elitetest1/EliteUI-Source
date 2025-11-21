.class abstract Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final blacklist mCells:[Landroid/view/View;

.field private final blacklist mColumnCount:I

.field private blacklist mItemIndices:[I

.field protected blacklist mMeasuredRowHeight:I


# direct methods
.method constructor blacklist <init>(ILandroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    new-array p2, p1, [Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return-void
.end method


# virtual methods
.method abstract blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public blacklist getColumnCount()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return p0
.end method

.method public blacklist getItemIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist getMeasuredRowHeight()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return p0
.end method

.method abstract blacklist getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract blacklist getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public blacklist getView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object p0, p0, p1

    return-object p0
.end method

.method abstract blacklist getViewGroup()Landroid/view/ViewGroup;
.end method

.method public blacklist measure()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return-void
.end method

.method public blacklist setItemIndex(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, p0, p1

    return-void
.end method

.method abstract blacklist setViewVisibility(II)V
.end method
