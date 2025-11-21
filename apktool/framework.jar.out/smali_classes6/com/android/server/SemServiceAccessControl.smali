.class public Lcom/android/server/SemServiceAccessControl;
.super Ljava/lang/Object;
.source "SemServiceAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemServiceAccessControl$AllowList;,
        Lcom/android/server/SemServiceAccessControl$PackageList;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist SECURE_CONTAINNER_UID_PREFIX:I = 0x186a0

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceAccessControl"


# instance fields
.field private blacklist RET_ERR_NOT_SUPPORTED:I

.field private blacklist isDAFileExist:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

.field private blacklist teeListData:Ljava/lang/String;

.field private blacklist teeSigData:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x94

    iput v0, p0, Lcom/android/server/SemServiceAccessControl;->RET_ERR_NOT_SUPPORTED:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    const-string p0, "SEC_ESE_ServiceAccessControl"

    const-string p1, "SemServiceAccessControl"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist allowListDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "SEC_ESE_ServiceAccessControl"

    const-string v1, "GS Er "

    const-string v2, "GS Ex "

    const-string v3, "TS Data Error : "

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "Start S-AL"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v5, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v6, 0x2

    invoke-static {p1, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "TS Data Error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    array-length v7, p1

    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    return-object v4

    :cond_2
    :try_start_1
    const-string v3, "GK"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v7, "SEMALKEY"

    invoke-virtual {v3, v7, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move-object v1, v4

    :goto_1
    invoke-virtual {v5, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-eqz p1, :cond_8

    array-length v1, p1

    if-ge v1, v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    new-array v2, v1, [B

    const/16 v3, 0x20

    new-array v5, v3, [B

    new-array v7, v1, [B

    const/4 v8, 0x0

    invoke-static {p1, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x30

    invoke-static {p1, v3, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    const-string p2, "AES/CBC/PKCS5Padding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v5, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, v6, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-nez p1, :cond_5

    const-string p1, "eAB Size Error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "Start verify"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, p2}, Lcom/android/server/SemServiceAccessControl;->verifyHmac([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MS"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_6
    const-string p1, "MF"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string p1, "LD Data Error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_8
    :goto_2
    const-string p1, "KB Size Error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_9
    :goto_3
    const-string p1, "TS KData Error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "D-err "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "D-e "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    const-string p1, "D-e IBEx"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->deleteALFile()V

    :cond_a
    :goto_4
    return-object v4
.end method

.method private blacklist deleteALFile()V
    .locals 7

    const-string v0, "D-DA"

    const-string v1, "SEC_ESE_ServiceAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.skms.android.agent"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/files/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "SEMAL_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DA D "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "D-DA er "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "D-DA ex "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist getProcessNameViaCmdLine(I)Ljava/lang/String;
    .locals 4

    const-string p0, ""

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_0
    :try_start_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-byte v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "SEC_ESE_ServiceAccessControl"

    const-string v1, "Error occurs on read process name via cmdline."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private blacklist hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    rem-int v2, v0, v1

    invoke-virtual {p1, p0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->match(Ljava/lang/String;I)Z

    move-result p1

    const-string v2, "]"

    const-string v3, "SEC_ESE_ServiceAccessControl"

    if-eqz p1, :cond_1

    const-string v4, "Requested package name = ["

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], called from secure container"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Permission denied. Package name = ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], UID = ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private blacklist setCosPatchAllowedPacakges()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.ese"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.firmware"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jcoppatch.spinative"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.ese.osupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.ese.cosupdateinterface"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmstresstestsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.gtoscriptrunner"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.sec.security.ese.proxy"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist setDAScpkmList()V
    .locals 14

    const-string v0, ""

    const-string v1, "SEC_ESE_ServiceAccessControl"

    new-instance v2, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v2}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v2, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    sget-boolean v3, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "com.sec.security.scpKmTest"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v3, "com.samsung.android.tzv"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.skms.android.agent"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "SET S-DA"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Start get FL list"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    array-length v6, v4

    move v7, v2

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, "SEMAL_SCPKM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v2

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x3

    if-lt v11, v12, :cond_2

    const/4 v11, 0x2

    aget-object v11, v10, v11

    if-eqz v11, :cond_1

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    aget-object v11, v10, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ge v8, v11, :cond_3

    aget-object v8, v10, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    move-object v0, v9

    goto :goto_1

    :cond_1
    const-string v9, "OSV NM"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FN Error "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v3, v0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get Path Error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v3, v0

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get Path Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isFileExist : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_6

    :goto_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "CIPHER_KEY"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CIPHER_AL"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MAC_AL"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v5, v0}, Lcom/android/server/SemServiceAccessControl;->allowListDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v6, v4

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Get DA List Error : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v6, v4

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Get DA List Exception "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object v0, v4

    move-object v4, v6

    :goto_9
    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_a

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_a
    if-eqz v0, :cond_a

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "allowedList"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v6, "None"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v4, v5}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    goto :goto_c

    :cond_7
    iget-object v6, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_8
    const-string/jumbo v2, "teeAllowListSignature"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    const-string/jumbo v2, "teeAllowList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SEMAL Error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_a
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SEMAL Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not FileExist : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.authfw"

    const-string v2, "SPASS_UID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.digitalkey"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.carkey"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.spay"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.spayfw"

    const-string v1, "SPAY_UID"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_d
    return-void
.end method

.method private blacklist setFactoryAllowedPackages()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.ese"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.salab.act"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.euicc.firmware"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setFactoryResetAllowedPackages()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.ese"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setHWParamAllowedPackages()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.ese"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setLccmAllowedPackages()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.ese"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setSKMSCardAllowedPackages()V
    .locals 2

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.ese"

    invoke-virtual {p0, v0}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setScpKmAllowedPackages()V
    .locals 3

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    sget-boolean v1, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "com.sec.security.scpKmTest"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.tzv"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private blacklist verifyHmac([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "HmacSHA256"

    const/4 v0, 0x0

    const-string v1, "SEC_ESE_ServiceAccessControl"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "VM Data Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "VM Er "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "VM Ex "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method


# virtual methods
.method public native blacklist ICCCcheckDeviceStatus()I
.end method

.method public blacklist SEAPIAccessPermission()Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const v4, 0x186a0

    rem-int v5, v1, v4

    invoke-virtual {v3, v0, v5}, Lcom/android/server/SemServiceAccessControl$AllowList;->match(Ljava/lang/String;I)Z

    move-result v3

    const-string v6, "], userId = ["

    const-string v7, "]"

    const-string v8, "SEC_ESE_ServiceAccessControl"

    if-eqz v3, :cond_8

    const-string v9, "Requested package name = ["

    if-lt v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], called from secure container"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v4, 0x3e8

    if-eq v5, v4, :cond_7

    const/16 v4, 0x7d0

    if-eq v5, v4, :cond_7

    if-eqz v5, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not use permitted uid, validate certificate, UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-virtual {p0, v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    const-string v0, "Get signing cert success"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v2, p0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getApkContentsSigners = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "ro.product_ship"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const-string/jumbo p0, "ro.system.build.tags"

    const-string/jumbo v3, "test-keys"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "release-keys"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez v2, :cond_2

    const-string p0, "failed to get signature"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "Permission denied. Unauthorized Signature."

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_2
    return v0

    :cond_5
    const-string p0, "Permission check skip, only check for ship with release-keys"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    const-string p0, "Failed to get signatures"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :try_start_2
    const-string p0, "Failed to get signing cert"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string v0, "Failed to get PKG info"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uses permitted uid, skip certificate validation"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Permission denied. Package name = ["

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], UID = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V
    .locals 0

    invoke-virtual {p3}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist checkStatus()Z
    .locals 3

    const-string v0, "Start checkStatus!!"

    const-string v1, "SEC_ESE_ServiceAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/SemServiceAccessControl;->ICCCcheckDeviceStatus()I

    move-result v0

    iget p0, p0, Lcom/android/server/SemServiceAccessControl;->RET_ERR_NOT_SUPPORTED:I

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "Not Supported!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const-string p0, "ICCCcheckDeviceStatus Fail!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "End checkStatus!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 5

    const-string v0, "SEC_ESE_ServiceAccessControl"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SemServiceAccessControl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object p0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length p0, p0

    if-nez p0, :cond_1

    iget-object p0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no getRunningAppProcesses, try to get process name via cmdline, pid = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/SemServiceAccessControl;->getProcessNameViaCmdLine(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Error occurs on checking package name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getScpkmDAFileSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/SemServiceAccessControl;->isDAFileExist:Z

    return p0
.end method

.method public blacklist getScpkmTeeListData()[B
    .locals 1

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->teeListData:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "SEC_ESE_ServiceAccessControl"

    const-string v0, "TL Data Error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getScpkmTeeSigData()[B
    .locals 1

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->teeSigData:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "SEC_ESE_ServiceAccessControl"

    const-string v0, "TS Data Error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setDAScpkmList()V

    iget-object p1, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0, p1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$AllowList;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/server/SemServiceAccessControl$PackageList;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryResetAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mCosPatchAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mHWParamAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mFactoryAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mLccmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mSKMSCardAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mScpKmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-static {p0, p1}, Lcom/android/server/SemServiceAccessControl$AllowList;->-$$Nest$mremove(Lcom/android/server/SemServiceAccessControl$AllowList;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist setAllowedPackages()V
    .locals 4

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setScpKmAllowedPackages()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setLccmAllowedPackages()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setSKMSCardAllowedPackages()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setFactoryAllowedPackages()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setCosPatchAllowedPacakges()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setHWParamAllowedPackages()V

    invoke-direct {p0}, Lcom/android/server/SemServiceAccessControl;->setFactoryResetAllowedPackages()V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.factory"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.facatfunction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.facuifunction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.nfc"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.ese"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.android.app.felicatest"

    const/16 v3, 0x403

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.nfc.felicalocktest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.firmware"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.android.app.telephonyui"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.security.ese.proxy"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.android.applettest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.security.ese.unitteset"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.ese.test"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sec.ese.service.test"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.euicc.lpaClient"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.sem.stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.mobile_stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.samsung.wear_stresstest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_SPI"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_Extended"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_Extended_TA"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_ECHO"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_N_VCM"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, ".S_appletcheck"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jrcpspisn110"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jrcpspi8052"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.jcoppatch.spinative"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.ese.osupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.semstest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.sems.channel"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.nxp.id.cas.esetest"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.ese.cosupdateinterface"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.ese.cosupdate.skmstresstestsagent"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handsetdev.gtoscriptrunner"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.gemalto.handset.esetool"

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mJavaPkgAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.samsung.android.tzv"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public blacklist setGrdmAllowedPackages()V
    .locals 3

    new-instance v0, Lcom/android/server/SemServiceAccessControl$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemServiceAccessControl$AllowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string/jumbo v1, "system"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/SemServiceAccessControl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/SemServiceAccessControl;->mGrdmAllowList:Lcom/android/server/SemServiceAccessControl$AllowList;

    const-string v0, "com.sec.security.grdmTest"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SemServiceAccessControl$AllowList;->add(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
