.class public Lcom/android/internal/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/internal/widget/AccountItemView;

    iget-object p3, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/android/internal/widget/AccountItemView;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/AccountItemView;->setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V

    return-object p2
.end method

.method public blacklist updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/widget/AccountViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
