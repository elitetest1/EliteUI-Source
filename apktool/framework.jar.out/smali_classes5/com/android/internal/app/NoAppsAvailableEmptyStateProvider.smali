.class public Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;
.super Ljava/lang/Object;
.source "NoAppsAvailableEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;,
        Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mMetricsCategory:Ljava/lang/String;

.field private final blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private final blacklist mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$T6xx3rPeSItWKrbCP1ylq6pzagU(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->lambda$getEmptyState$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$fkIRe7UixWD5oJT6J6Hp2Je-gII(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->lambda$getEmptyState$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    return-void
.end method

.method private blacklist hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Lcom/android/internal/app/ResolverListAdapter;->getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private synthetic blacklist lambda$getEmptyState$0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const v0, 0x1040d07

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getEmptyState$1()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const v0, 0x1040d08

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {p1, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {p1, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;

    iget-object v2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-nez p0, :cond_4

    new-instance p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;

    invoke-direct {p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
