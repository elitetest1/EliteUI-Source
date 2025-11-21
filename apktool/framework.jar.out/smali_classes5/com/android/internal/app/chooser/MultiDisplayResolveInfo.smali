.class public Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
.super Lcom/android/internal/app/chooser/DisplayResolveInfo;
.source "MultiDisplayResolveInfo.java"


# instance fields
.field final blacklist mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mSelected:I

.field blacklist mTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    iput-object p2, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTargets()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist hasSelected()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    return-void
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
