.class public Lcom/samsung/android/knox/dar/StreamCipher;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_KEY_LEN:I = 0x40

.field public static final blacklist DEFAULT_KS_HANDLE:J = 0x0L

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist HDR_CHARS:[C

.field private static final blacklist HDR_LEN:I

.field private static final blacklist MAX_RETRY_CNT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "StreamCipher.SDP"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/StreamCipher;

.field private static final blacklist sSecureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPublicHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->sSecureRandom:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->EMPTY_BYTES:[B

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    array-length v0, v0

    sput v0, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    return-void

    :array_0
    .array-data 2
        0xdds
        0xdes
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->initKeyMap()V

    return-void
.end method

.method private static blacklist checkHeader([BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    sget-object v3, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist clear([B)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static blacklist decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v1, "StreamCipher.SDP"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/knox/dar/StreamCipher;->checkHeader([BI)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "Failed to decrypt stream due to invalid header. return duplicate."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_1
    new-array v4, v2, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    sget v6, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v7, v5, v6

    aget-byte v7, v3, v7

    add-int v8, v0, v5

    add-int/2addr v8, v6

    aget-byte v6, v3, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "decryptStream type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0, v4}, Lcom/samsung/android/knox/dar/StreamCipher;->getStreamCredential(Lcom/android/internal/widget/LockscreenCredential;[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lcom/samsung/android/knox/dar/StreamCipher;->clear([B)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v4}, Lcom/samsung/android/knox/dar/StreamCipher;->clear([B)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "decryptStream is none or size zero. return duplicate."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decryptStream([B)[B
    .locals 7

    const/4 v0, 0x0

    const-string v1, "StreamCipher.SDP"

    if-eqz p0, :cond_3

    array-length v2, p0

    sget v3, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    mul-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, v2}, Lcom/samsung/android/knox/dar/StreamCipher;->checkHeader([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    sget v4, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v5, v1, v4

    aget-byte v5, p0, v5

    add-int v6, v2, v1

    add-int/2addr v6, v4

    aget-byte v4, p0, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string p0, "Failed to decrypt stream due to invalid header"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_1
    const-string p0, "decryptStream - Invalid parameters"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static blacklist encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v1, "StreamCipher.SDP"

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v0

    new-array v3, v3, [B

    sget-object v4, Lcom/samsung/android/knox/dar/StreamCipher;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v3, v2}, Lcom/samsung/android/knox/dar/StreamCipher;->fillHeader([BI)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    add-int v6, v2, v5

    sget v7, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int/2addr v6, v7

    add-int/2addr v7, v5

    aget-byte v7, v3, v7

    aget-byte v8, v4, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encryptStream type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/samsung/android/knox/dar/StreamCipher;->getStreamCredential(Lcom/android/internal/widget/LockscreenCredential;[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string v0, "encryptStream is none or size zero. return duplicate."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist encryptStream([B)[B
    .locals 7

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    sget v1, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v0

    new-array v2, v2, [B

    sget-object v3, Lcom/samsung/android/knox/dar/StreamCipher;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->fillHeader([BI)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int v4, v1, v3

    sget v5, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int/2addr v4, v5

    add-int/2addr v5, v3

    aget-byte v5, v2, v5

    aget-byte v6, p0, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    const-string p0, "StreamCipher.SDP"

    const-string v0, "encryptStream - Invalid parameters"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist fillHeader([BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    aget-byte v2, p0, v0

    sget-object v3, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist generateKey(I)[B
    .locals 1

    if-lez p1, :cond_0

    new-array p0, p1, [B

    sget-object p1, Lcom/samsung/android/knox/dar/StreamCipher;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0

    :cond_0
    const/16 p0, 0x40

    new-array p1, p0, [B

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-object p1
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/knox/dar/StreamCipher;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/dar/StreamCipher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dar/StreamCipher;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/StreamCipher;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    return-object p0
.end method

.method private static blacklist getStreamCredential(Lcom/android/internal/widget/LockscreenCredential;[B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/widget/LockscreenCredential;->streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method private blacklist initKeyMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/16 v1, 0x40

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v1, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    move-result p0

    return p0
.end method

.method private blacklist registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist streamCipher([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length p0, p1

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    array-length p0, p2

    if-eqz p0, :cond_2

    array-length p0, p1

    new-array p0, p0, [B

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    aget-byte v1, p1, v2

    aget-byte v0, p2, v0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    array-length v0, p2

    rem-int v0, v2, v0

    goto :goto_0

    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-byte v0, p1, v2

    aget-byte v1, p2, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist clearKeyStream()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->destroy()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->initKeyMap()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getCipher([BJ)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKey(J)[B
    .locals 4

    const-string v0, "Key found with handle "

    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "StreamCipher.SDP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->getKey()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPublicHandle()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist issueKeyStream()J
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    return-wide v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist issueKeyStream(I)J
    .locals 7

    const-wide/16 v0, 0x0

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/samsung/android/knox/dar/StreamCipher;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/StreamCipher;->generateKey(I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v0
.end method

.method public blacklist restoreCipher([BJ)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist streamCipher([BJ)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/dar/StreamCipher;->EMPTY_BYTES:[B

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/dar/StreamCipher;->generateKey(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([B[B)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
