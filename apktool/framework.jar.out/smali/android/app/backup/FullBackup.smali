.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupSchemeId;,
        Landroid/app/backup/FullBackup$BackupScheme;,
        Landroid/app/backup/FullBackup$ConfigSection;
    }
.end annotation


# static fields
.field public static final greylist-max-o APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final greylist-max-o APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final greylist-max-o CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final greylist-max-o CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final greylist-max-o DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final greylist-max-o DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final greylist-max-o DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final greylist-max-o DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final greylist-max-o DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final greylist-max-o DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final greylist-max-o DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final greylist-max-o FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field private static final blacklist FLAG_DISABLE_IF_NO_ENCRYPTION_CAPABILITIES:Ljava/lang/String; = "disableIfNoEncryptionCapabilities"

.field public static final greylist-max-o FLAG_REQUIRED_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "clientSideEncryption"

.field public static final greylist-max-o FLAG_REQUIRED_DEVICE_TO_DEVICE_TRANSFER:Ljava/lang/String; = "deviceToDeviceTransfer"

.field public static final greylist-max-o FLAG_REQUIRED_FAKE_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "fakeClientSideEncryption"

.field public static final greylist-max-o FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final greylist-max-o FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field private static final blacklist IGNORE_FULL_BACKUP_CONTENT_IN_D2D:J = 0xac2922cL

.field public static final greylist-max-o KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final blacklist MANAGED_EXTERNAL_SPECIFIC_TREE_RESTORE_TOKEN:Ljava/lang/String; = "ef_s"

.field public static final blacklist MANAGED_EXTERNAL_SPECIFIC_TREE_TOKEN:Ljava/lang/String; = "/storage/"

.field public static final greylist-max-o MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final greylist-max-o NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final greylist-max-o OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final greylist-max-o ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final greylist-max-o SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final greylist-max-o SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final greylist-max-o SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final greylist-max-o TAG:Ljava/lang/String; = "FullBackup"

.field static final greylist-max-o TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final greylist-max-o kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/backup/FullBackup$BackupSchemeId;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized blacklist getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 4

    const-class v0, Landroid/app/backup/FullBackup;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/backup/FullBackup$BackupSchemeId;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/backup/FullBackup$BackupSchemeId;-><init>(Ljava/lang/String;I)V

    sget-object v2, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/FullBackup$BackupScheme;

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v3, p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static greylist-max-o getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 2

    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    return-object v0
.end method

.method public static greylist-max-o restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p8

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    if-ne v4, v0, :cond_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x0

    const-string v5, "FullBackup"

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to create/open file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v4

    :goto_0
    const/high16 v6, 0x10000

    new-array v7, v6, [B

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-wide v9, p1

    move-object p0, v0

    :goto_1
    cmp-long v0, v9, v2

    if-lez v0, :cond_6

    int-to-long v11, v6

    cmp-long v0, v9, v11

    if-lez v0, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    long-to-int v0, v9

    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    if-gtz v12, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Incomplete read: expected "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " but got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, p1, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    if-eqz p0, :cond_5

    :try_start_1
    invoke-virtual {p0, v7, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Unable to write to file "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p0, v4

    :cond_5
    :goto_3
    int-to-long v11, v12

    sub-long/2addr v9, v11

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    :goto_5
    cmp-long p0, p4, v2

    if-ltz p0, :cond_8

    if-eqz v1, :cond_8

    const-wide/16 v2, 0x1c0

    and-long v2, p4, v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    long-to-int v0, v2

    invoke-static {p0, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_6
    move-wide/from16 v2, p6

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_8
    return-void
.end method
