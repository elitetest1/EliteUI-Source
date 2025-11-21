.class public Lcom/android/server/backup/CompanionBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "CompanionBackupHelper.java"


# static fields
.field private static final blacklist BLOB_VERSION:I = 0x1

.field private static final blacklist KEY_COMPANION:Ljava/lang/String; = "companion"

.field private static final blacklist TAG:Ljava/lang/String; = "CompanionBackupHelper"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    const-string v0, "companion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 2

    const-string v0, "Got companion backup data."

    const-string v1, "CompanionBackupHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "companion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "companiondevice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {p1, p2, p0}, Landroid/companion/ICompanionDeviceManager;->applyRestoredPayload([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error applying restored payload to CompanionDeviceManager."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "companion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "companiondevice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceManager;->getBackupPayload(I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "CompanionBackupHelper"

    const-string v0, "Error getting backup from CompanionDeviceManager."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
