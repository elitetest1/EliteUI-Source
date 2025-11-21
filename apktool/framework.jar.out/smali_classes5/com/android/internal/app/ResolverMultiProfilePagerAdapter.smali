.class public Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ResolverMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

.field private blacklist mUseLayoutWithDefault:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    iput-object v1, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    const/4 p1, 0x0

    invoke-direct {v0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    aput-object p2, p0, p1

    iput-object p0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v2, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    iput-object v1, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    const/4 p1, 0x0

    invoke-direct {v0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x1

    invoke-direct {v0, p3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    aput-object p2, p0, p1

    iput-object p0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/android/internal/app/ResolverActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v1, :cond_0

    const v1, 0x109019f

    goto :goto_0

    :cond_0
    const v1, 0x10901a4

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v1
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/AbsListView;

    move-result-object p0

    return-object p0
.end method

.method blacklist getActiveAdapterView()Landroid/widget/AbsListView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/AbsListView;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/AbsListView;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object p0, p0, p1

    return-object p0
.end method

.method blacklist getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length p0, p0

    return p0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCloneUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method blacklist getListViewForIndex(I)Landroid/widget/AbsListView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/AbsListView;

    return-object p0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setupListAdapter(I)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method blacklist setUseLayoutWithDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 3

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method blacklist setupListAdapter(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/AbsListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
