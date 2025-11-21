.class public Lcom/samsung/android/globalactions/util/SemPersonaWrapper;
.super Ljava/lang/Object;
.source "SemPersonaWrapper.java"


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field blacklist mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method


# virtual methods
.method public blacklist isDOProvisioningMode()Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidVersion()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
