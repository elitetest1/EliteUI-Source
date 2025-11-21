.class public Landroid/os/UserManagerCache;
.super Ljava/lang/Object;
.source "UserManagerCache.java"


# static fields
.field private static blacklist sEnabledProfileIds:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sEnabledProfileIdsLock:Ljava/lang/Object;

.field private static blacklist sProfileIdsWithDisabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileIdsWithDisabledLock:Ljava/lang/Object;

.field private static blacklist sProfileParent:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileParentLock:Ljava/lang/Object;

.field private static blacklist sProfiles:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfilesLock:Ljava/lang/Object;

.field private static blacklist sUserInfo:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserInfoLock:Ljava/lang/Object;

.field private static blacklist sUserPropertiesFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserPropertiesFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserRestrictionFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserRestrictionFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockedLock:Ljava/lang/Object;

.field private static blacklist sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockingOrUnlockedLock:Ljava/lang/Object;


# instance fields
.field private blacklist mQuietModeEnabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuietModeEnabledLock:Ljava/lang/Object;

.field private blacklist mUserSerialNumber:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserSerialNumberLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users_enabled"

    const-string v5, "EnabledProfileIds"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users_enabled"

    const-string v5, "EnabledProfileIds"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileIdsWithDisabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileIdsWithDisabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileParent"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileParent"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "Profiles"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "Profiles"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "UserInfo"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "UserInfo"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserManager$QueryUserId;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_properties_from_query"

    const-string v5, "UserPropertiesFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_properties_from_query"

    const-string v5, "UserPropertiesFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_restriction_from_query"

    const-string v5, "UserRestrictionFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_restriction_from_query"

    const-string v5, "UserRestrictionFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist initCache()V
    .locals 0

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlocked()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlockingOrUnlocked()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserInfo()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserPropertiesFromQuery()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserRestrictionFromQuery()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfiles()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileIdsWithDisabled()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateEnabledProfileIds()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileParent()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateQuietModeEnabled()V

    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserSerialNumber()V

    return-void
.end method

.method public static final blacklist invalidateEnabledProfileIds()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateProfileIdsWithDisabled()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateProfileParent()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateProfiles()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateQuietModeEnabled()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_quiet_mode_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserInfo()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserPropertiesFromQuery()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_properties_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserRestrictionFromQuery()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_restriction_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserSerialNumber()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserUnlocked()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final blacklist invalidateUserUnlockingOrUnlocked()V
    .locals 2

    const-string/jumbo v0, "system_server"

    const-string v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string v4, "is_user_unlocked"

    const-string v5, "UserUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string v4, "is_user_unlocked"

    const-string v5, "UserUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string v4, "is_user_unlocked"

    const-string v5, "UserUnlockingOrUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string v4, "is_user_unlocked"

    const-string v5, "UserUnlockingOrUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "UserSerialNumber"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "UserSerialNumber"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_quiet_mode_enabled"

    const-string v5, "QuietModeEnabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_quiet_mode_enabled"

    const-string v5, "QuietModeEnabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
