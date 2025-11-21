.class public Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "SemSelectTaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;,
        Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mActivityCallback:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field public blacklist mSelectedItem:I

.field public blacklist secondDepthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist viewHolder:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityCallback(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mActivityCallback:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/List;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    iput-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;",
            "Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    iput-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iput-object p3, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mActivityCallback:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;

    return-void
.end method


# virtual methods
.method public blacklist getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getLastChosenActivityIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getLastChosenPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    if-gez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    :cond_2
    iget-object v0, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    if-ne v2, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_4
    iget-object p0, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
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

    check-cast p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->onBindViewHolder(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;I)V

    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x10901a7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;-><init>(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->viewHolder:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    return-object p2
.end method

.method public bridge synthetic blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
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

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1

    iget-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->secondDepthList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
