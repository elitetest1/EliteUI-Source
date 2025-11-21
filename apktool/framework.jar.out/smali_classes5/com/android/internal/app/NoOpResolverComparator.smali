.class public Lcom/android/internal/app/NoOpResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "NoOpResolverComparator.java"


# instance fields
.field private blacklist mOriginalTargetOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$eoxt2xcpejfl-MnYdiDWClu0264(Lcom/android/internal/app/NoOpResolverComparator;Landroid/content/pm/ResolveInfo;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->lambda$compare$0(Landroid/content/pm/ResolveInfo;)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    return-void
.end method

.method private synthetic blacklist lambda$compare$0(Landroid/content/pm/ResolveInfo;)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method


# virtual methods
.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1

    new-instance v0, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoOpResolverComparator;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    iget-object v1, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NoOpResolverComparator;->afterCompute()V

    return-void
.end method

.method public blacklist getScore(Landroid/content/pm/ResolveInfo;)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .locals 0

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result p0

    return p0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
