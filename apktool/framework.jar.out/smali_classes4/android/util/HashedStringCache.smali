.class public Landroid/util/HashedStringCache;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HashedStringCache$HashResult;
    }
.end annotation


# static fields
.field private static final blacklist DAYS_TO_MILLIS:J = 0x5265c00L

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HASH_CACHE_SIZE:I = 0x64

.field private static final blacklist HASH_LENGTH:I = 0x8

.field static final blacklist HASH_SALT:Ljava/lang/String; = "_hash_salt"

.field static final blacklist HASH_SALT_DATE:Ljava/lang/String; = "_hash_salt_date"

.field static final blacklist HASH_SALT_GEN:Ljava/lang/String; = "_hash_salt_gen"

.field private static final blacklist MAX_SALT_DAYS:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "HashedStringCache"

.field private static final blacklist UTF_8:Ljava/nio/charset/Charset;

.field private static blacklist sHashedStringCache:Landroid/util/HashedStringCache;


# instance fields
.field private final blacklist mDigester:Ljava/security/MessageDigest;

.field private final blacklist mHashes:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreferenceLock:Ljava/lang/Object;

.field private blacklist mSalt:[B

.field private blacklist mSaltGen:I

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field private blacklist mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist checkNeedsNewSalt(Ljava/lang/String;IJ)Z
    .locals 6

    const-wide/16 p0, 0x0

    cmp-long v0, p3, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    int-to-long p2, p2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr p2, v4

    cmp-long p2, v2, p2

    if-gez p2, :cond_3

    cmp-long p0, v2, p0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shared_prefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "hashed_cache.xml"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance()Landroid/util/HashedStringCache;
    .locals 1

    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/HashedStringCache;

    invoke-direct {v0}, Landroid/util/HashedStringCache;-><init>()V

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    :cond_0
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    return-object v0
.end method

.method private blacklist populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/util/HashedStringCache;->getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hash_salt_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, p2, p3, v1, v2}, Landroid/util/HashedStringCache;->checkNeedsNewSalt(Ljava/lang/String;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    iget-object p3, p0, Landroid/util/HashedStringCache;->mSalt:[B

    if-eqz p3, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object p3, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hash_salt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_hash_salt_gen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    if-eqz p3, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    const/16 p1, 0x10

    new-array p1, p1, [B

    iget-object p3, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p3, 0x3

    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hash_salt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hash_salt_gen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_hash_salt_date"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    sget-object p1, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/util/HashedStringCache;->mSalt:[B

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/util/HashedStringCache;->populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p1, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p2, Landroid/util/HashedStringCache$HashResult;

    iget p3, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {p2, p0, p1, p3}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object p2

    :cond_1
    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    iget-object p2, p0, Landroid/util/HashedStringCache;->mSalt:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    sget-object p2, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 p2, 0x8

    array-length p4, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p4, 0x0

    const/4 v0, 0x3

    invoke-static {p1, p4, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p2, p3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/util/HashedStringCache$HashResult;

    iget p3, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {p2, p0, p1, p3}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
