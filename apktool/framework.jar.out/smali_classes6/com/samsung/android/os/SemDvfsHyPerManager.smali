.class public Lcom/samsung/android/os/SemDvfsHyPerManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsHyPerManager.java"


# direct methods
.method protected constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p1, "SemDvfsHyPerManager"

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "HyPer"

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .locals 1

    const/16 v0, -0x3e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsHyPerManager;->acquire(I)V

    return-void
.end method

.method public whitelist setDvfsValue(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mType:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->acquireHash:Ljava/util/HashMap;

    iget p0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
