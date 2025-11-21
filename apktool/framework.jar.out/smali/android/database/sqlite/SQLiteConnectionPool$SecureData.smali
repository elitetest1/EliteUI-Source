.class final Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureData"
.end annotation


# static fields
.field private static final blacklist DEFAULT_ITER_COUNT:I = 0x3e8

.field private static final blacklist DEFAULT_KEY_LENGTH:I = 0x80

.field private static final blacklist DEFAULT_SALT_IV_SIZE:I = 0x10


# instance fields
.field private blacklist mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private blacklist mEncryptedData:[B

.field private blacklist mIV:[B

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSalt:[B


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    const/16 p1, 0x10

    new-array p2, p1, [B

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method private blacklist generateKey([C)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    const/16 v2, 0x3e8

    const/16 v3, 0x80

    invoke-direct {v0, p1, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to generate the data of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist decryptAndGet([C)[B
    .locals 6

    const-string v0, "Fail to decrypt the data of "

    const-string v1, "Could not decrypt the data of "

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-object p0

    :catch_0
    move-exception p1

    const-string v3, "SQLiteConnectionPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please encrypt and save data first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "password should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist encryptAndSave([C[B)V
    .locals 6

    const-string v0, "Fail to encrpyt the data of "

    const-string v1, "Could not encrypt the data of "

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    const-string p2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data that will be encrypted should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "password should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
