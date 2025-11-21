.class public abstract Landroid/widget/BaseExpandableListAdapter;
.super Ljava/lang/Object;
.source "BaseExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;
.implements Landroid/widget/HeterogeneousExpandableList;


# instance fields
.field private final greylist-max-o mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist getChildType(II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getChildTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist getCombinedChildId(JJ)J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    and-long p0, p1, v0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr p0, v0

    or-long/2addr p0, p3

    return-wide p0
.end method

.method public whitelist getCombinedGroupId(J)J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    and-long p0, p1, v0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public whitelist getGroupType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getGroupTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public whitelist notifyDataSetInvalidated()V
    .locals 0

    iget-object p0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public whitelist onGroupCollapsed(I)V
    .locals 0

    return-void
.end method

.method public whitelist onGroupExpanded(I)V
    .locals 0

    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
