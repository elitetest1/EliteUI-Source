.class public Lcom/android/internal/globalactions/ActionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionsAdapter.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

.field private final blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyguardShowing:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    iput-object p4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCount()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    if-eqz v0, :cond_0

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public blacklist getItem(I)Lcom/android/internal/globalactions/Action;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    if-eqz v0, :cond_0

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range of showable actions, filtered count="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", keyguardshowing="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", provisioned="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3, v0}, Lcom/android/internal/globalactions/Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isEnabled(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/globalactions/Action;->isEnabled()Z

    move-result p0

    return p0
.end method
