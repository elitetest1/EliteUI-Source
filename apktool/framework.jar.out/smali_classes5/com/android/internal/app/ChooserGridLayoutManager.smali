.class public Lcom/android/internal/app/ChooserGridLayoutManager;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "ChooserGridLayoutManager.java"


# instance fields
.field private blacklist mAllAppListGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mShortcutGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mVerticalScrollEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private blacklist createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, p0

    move v5, v3

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v5, p0

    :cond_2
    :goto_2
    if-lez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist readGroupTitles(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1040ed8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    const v0, 0x1040f82

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    const v0, 0x10401c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public blacklist canScrollVertically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/widget/GridLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public blacklist isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/widget/GridLayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x10205fc

    if-ne p1, p2, :cond_0

    const-class p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserGridLayoutManager;->createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x1020284

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p2

    :cond_2
    const-class p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserGridLayoutManager;->createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method blacklist setVerticalScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    return-void
.end method
