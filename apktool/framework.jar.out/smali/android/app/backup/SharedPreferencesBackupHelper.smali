.class public Landroid/app/backup/SharedPreferencesBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "SharedPreferencesBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SharedPreferencesBackupHelper"


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mPrefGroups:[Ljava/lang/String;


# direct methods
.method public varargs constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    iget-object p0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, v2, p0}, Landroid/app/backup/SharedPreferencesBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3

    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/backup/SharedPreferencesBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
