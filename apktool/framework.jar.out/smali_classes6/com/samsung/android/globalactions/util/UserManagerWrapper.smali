.class public Lcom/samsung/android/globalactions/util/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# instance fields
.field private final blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method blacklist getUsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAllowedSafeBoot()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_safe_boot"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isUserSwitcherEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p0

    return p0
.end method
