.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEYS:[Ljava/lang/String;

.field private static final blacklist KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final blacklist KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final blacklist KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final blacklist STATE_VERSION:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const-string v0, "intent-verification"

    const-string v1, "domain-verification"

    const-string/jumbo v2, "preferred-activity"

    const-string v3, "default-apps"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 7

    const-string v0, "PreferredBackup"

    const-string v1, "Unexpected restore key "

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_3
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p2, p0}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    return-void

    :cond_2
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p2, p0}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    return-void

    :cond_3
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p2, p0}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to restore key "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x298b2982 -> :sswitch_3
        -0x20befb7c -> :sswitch_2
        -0x19949e54 -> :sswitch_1
        0x4fa3eadb -> :sswitch_0
    .end sparse-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .locals 8

    const-string v0, "PreferredBackup"

    const-string v1, "Unexpected backup key "

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "preferred-activity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "intent-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "domain-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_3
    const-string v4, "default-apps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object p0

    return-object p0

    :cond_2
    return-object v3

    :cond_3
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object p0

    return-object p0

    :cond_4
    iget p0, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to store payload "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x298b2982 -> :sswitch_3
        -0x20befb7c -> :sswitch_2
        -0x19949e54 -> :sswitch_1
        0x4fa3eadb -> :sswitch_0
    .end sparse-switch
.end method
