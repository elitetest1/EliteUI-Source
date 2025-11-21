.class public final Lcom/android/server/SemService;
.super Lcom/samsung/android/service/SemService/ISemService$Stub;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemService$SPITimeoutTask;
    }
.end annotation


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ALREADY_OPENED:I = -0xb

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_NOT_OPENED:I = -0xc

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_SIZE:I = 0x0

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String; = null

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field private static final blacklist ERROR_SPI_ALREADY_OPENED:I = -0xc8

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field private static final blacklist MAX_GET_ESEA_DATA:I = 0x400

.field private static final blacklist MAX_RETRY_SPI_CHECK:I = 0xf

.field private static final blacklist MAX_TIMEOUT_IN_SECOND:J = 0x1eL

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_Service"

.field private static blacklist chipVendor:Ljava/lang/String; = "GEMALTO"

.field private static blacklist cosName:Ljava/lang/String; = "UT8.0U"

.field private static final blacklist mLock:Ljava/lang/Object;


# instance fields
.field blacklist CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist SPITimeout:Ljava/util/Timer;

.field private blacklist bodyData:[B

.field private blacklist bytePublicKeyDataSKMS:[B

.field private blacklist bytePublicKeyDataSecurity:[B

.field private blacklist bytePublicKeySKMSLen:I

.field private blacklist bytePublicKeySecurityLen:I

.field private blacklist connectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsOpened:Z

.field private blacklist mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

.field private blacklist secureBuffer:Ljava/lang/StringBuffer;

.field private blacklist skuChipName:Ljava/lang/String;

.field private blacklist spiOpenPackageName:Ljava/lang/String;

.field private blacklist supportEsek:Z

.field private blacklist supportReeSpi:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/server/SemService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    const/16 v0, 0x12c

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v0, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    iput-boolean v0, p0, Lcom/android/server/SemService;->supportEsek:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/SemService;->mIsOpened:Z

    iput-object v1, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/android/server/SemService;->bodyData:[B

    const-string v1, "SEC_ESE_Service"

    const-string v2, "Start SemService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/SemServiceAccessControl;

    invoke-direct {v1, p1}, Lcom/android/server/SemServiceAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->setAllowedPackages()V

    iput-object p1, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {p1}, Lcom/android/server/SemServiceAccessControl;->setGrdmAllowedPackages()V

    :cond_1
    sget-object p1, Lcom/android/server/SemService;->chipVendor:Ljava/lang/String;

    const-string v1, "SKU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/server/SemService;->readSkuProperty()V

    iget-object p1, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;

    const-string v1, "ese"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/SemService;->setDefaultCosNameProperty()V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/SemService;->setDefaultCosNameProperty()V

    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist encData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING"

    const-string v1, "S-ED"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12c

    new-array v3, v1, [B

    new-array v1, v1, [B

    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    if-ge v5, v6, :cond_2

    :cond_0
    const-string v5, "PK Error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v7

    iput v5, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v7, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v3, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    if-lt v1, v6, :cond_3

    iget v1, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    if-ge v1, v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "GET DATA"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x10

    new-array v3, v1, [B

    const/16 v5, 0x20

    new-array v7, v5, [B

    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    invoke-virtual {v8, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v8, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v7, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v6, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v11, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    invoke-direct {v10, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    iget-object p0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B

    invoke-direct {v11, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v9, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    const/16 v9, 0x30

    new-array v9, v9, [B

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v9, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v11, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "GET DATA FAIL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ENC Data Error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ENC Data Exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ENC Data NullpointException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private blacklist getAccessRule()Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "SEC_ESE_Service"

    const/16 v0, 0xe

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x5

    new-array v5, v4, [B

    fill-array-data v5, :array_1

    new-array v6, v4, [B

    fill-array-data v6, :array_2

    const/16 v7, 0x2400

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-array v11, v7, [B

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v12

    if-eqz v12, :cond_0

    const-string v0, "S-LOG Open Fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_6

    return-object v9

    :cond_0
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v1, v3, v0, v11, v10}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v0

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const/4 v11, 0x2

    if-lt v0, v11, :cond_5

    add-int/lit8 v13, v0, -0x2

    aget-byte v13, v3, v13

    const/16 v14, -0x70

    if-ne v13, v14, :cond_5

    sub-int/2addr v0, v12

    aget-byte v0, v3, v0

    if-nez v0, :cond_5

    move v0, v10

    move v3, v0

    :goto_0
    const/16 v13, 0x32

    if-ge v0, v13, :cond_4

    new-array v13, v7, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {v1, v5, v4, v13, v10}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_6

    :cond_1
    :try_start_3
    invoke-virtual {v1, v6, v4, v13, v10}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    :goto_1
    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEND SW["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v15, -0x2

    aget-byte v16, v13, v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v17, v9

    :try_start_4
    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v15, -0x1

    aget-byte v16, v13, v9

    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v15, v11, :cond_2

    aget-byte v4, v13, v7

    const/16 v12, 0x69

    if-ne v4, v12, :cond_2

    aget-byte v4, v13, v9

    const/16 v12, -0x7b

    if-ne v4, v12, :cond_2

    goto :goto_2

    :cond_2
    if-lt v15, v11, :cond_3

    aget-byte v4, v13, v7

    if-ne v4, v14, :cond_3

    aget-byte v4, v13, v9

    if-nez v4, :cond_3

    invoke-static {v13, v10, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v17

    const/4 v4, 0x5

    const/16 v7, 0x2400

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "Send Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    return-object v17

    :cond_4
    move-object/from16 v17, v9

    goto :goto_2

    :cond_5
    move-object/from16 v17, v9

    move v3, v10

    :goto_2
    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v17, v9

    :goto_3
    const/4 v12, 0x1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v17, v9

    :goto_4
    const/4 v12, 0x1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v17, v9

    move v12, v10

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GET DATA Error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_6

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v17, v9

    move v12, v10

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GET DATA EXCEPTION "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_6

    invoke-virtual {v1, v10}, Lcom/android/server/SemService;->close_Spi(I)I

    :cond_6
    :goto_7
    return-object v17

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x41t
        0x43t
        0x4ct
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x40t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x36t
        -0x1t
        0x60t
        0x0t
    .end array-data
.end method

.method private native blacklist getDPDLog()[B
.end method

.method private blacklist getDate()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd hh:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getEncodedDCKLog()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "SEC_ESE_Service"

    const-string v2, "DCK Version : "

    const-string v3, "Select SW : "

    const/16 v4, 0x13

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    const/4 v6, 0x5

    new-array v7, v6, [B

    fill-array-data v7, :array_1

    new-array v8, v6, [B

    fill-array-data v8, :array_2

    new-array v9, v6, [B

    fill-array-data v9, :array_3

    const/16 v10, 0x2400

    new-array v11, v10, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    new-array v14, v10, [B

    invoke-virtual {v0, v13}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v15

    if-eqz v15, :cond_0

    const-string v2, "S-LOG DCK Open Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v12

    :cond_0
    :try_start_1
    invoke-virtual {v0, v5, v4, v14, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v4

    invoke-static {v14, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v4, -0x2

    aget-byte v16, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v12

    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v4, -0x1

    aget-byte v16, v5, v12

    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x2

    if-lt v4, v14, :cond_5

    aget-byte v3, v5, v3

    const/16 v4, -0x70

    if-ne v3, v4, :cond_5

    aget-byte v3, v5, v12

    if-nez v3, :cond_5

    new-array v3, v10, [B

    invoke-virtual {v0, v7, v6, v3, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v13

    move v3, v2

    :goto_0
    const/16 v5, 0x41

    if-ge v2, v5, :cond_4

    new-array v5, v10, [B

    if-nez v2, :cond_1

    invoke-virtual {v0, v8, v6, v5, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v9, v6, v5, v13}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v7

    :goto_1
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SEND SW["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "] : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v7, -0x2

    aget-byte v16, v5, v15

    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v7, -0x1

    aget-byte v16, v5, v6

    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v14, :cond_2

    aget-byte v10, v5, v15

    if-ne v10, v4, :cond_2

    aget-byte v10, v5, v6

    if-nez v10, :cond_2

    const-string v2, "GET DATA FINISH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v13, v11, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v15

    goto :goto_2

    :cond_2
    if-lt v7, v14, :cond_3

    aget-byte v7, v5, v15

    const/16 v10, 0x63

    if-ne v7, v10, :cond_3

    aget-byte v6, v5, v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    const-string v6, "GET DATA MORE"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v13, v11, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v15

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x5

    const/16 v10, 0x2400

    goto :goto_0

    :cond_3
    const-string v2, "Send Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v13}, Lcom/android/server/SemService;->close_Spi(I)I

    return-object v17

    :cond_4
    :goto_2
    invoke-virtual {v0, v13}, Lcom/android/server/SemService;->close_Spi(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEMSVC[4] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v2

    :cond_5
    :try_start_4
    const-string v2, "Select Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v13}, Lcom/android/server/SemService;->close_Spi(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v17

    :catch_0
    move-object/from16 v17, v12

    :catch_1
    const/4 v15, 0x1

    goto :goto_3

    :catch_2
    move-object/from16 v17, v12

    :catch_3
    move v15, v13

    :goto_3
    const-string v2, "GET DATA EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_6

    invoke-virtual {v0, v13}, Lcom/android/server/SemService;->close_Spi(I)I

    :cond_6
    return-object v17

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xdt
        -0x60t
        0x0t
        0x0t
        0x8t
        0x9t
        0x43t
        0x43t
        0x43t
        0x44t
        0x4bt
        0x41t
        0x76t
        0x31t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        -0x61t
        0x8t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist getSCRSActivationList()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "SEC_ESE_Service"

    const-string v2, "Select SW : "

    const/16 v3, 0xe

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    const/16 v5, 0x8

    new-array v6, v5, [B

    fill-array-data v6, :array_1

    new-array v7, v5, [B

    fill-array-data v7, :array_2

    const/16 v8, 0x2400

    new-array v9, v8, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-array v12, v8, [B

    invoke-virtual {v0, v11}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v13

    if-eqz v13, :cond_0

    const-string v2, "S-LOG SCRS Open Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v10

    :cond_0
    :try_start_1
    invoke-virtual {v0, v4, v3, v12, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v3

    invoke-static {v12, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x2

    aget-byte v14, v4, v2

    invoke-static {v14}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v3, -0x1

    aget-byte v15, v4, v14

    invoke-static {v15}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    if-lt v3, v12, :cond_5

    aget-byte v2, v4, v2

    const/16 v3, -0x70

    if-ne v2, v3, :cond_5

    aget-byte v2, v4, v14

    if-nez v2, :cond_5

    move v2, v11

    move v4, v2

    :goto_0
    const/16 v14, 0xa

    if-ge v2, v14, :cond_4

    new-array v14, v8, [B

    if-nez v2, :cond_1

    invoke-virtual {v0, v6, v5, v14, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7, v5, v14, v11}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v15

    :goto_1
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SEND SW["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v15, -0x2

    aget-byte v16, v14, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v10

    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v15, -0x1

    aget-byte v16, v14, v10

    invoke-static/range {v16 .. v16}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v15, v12, :cond_2

    aget-byte v5, v14, v8

    if-ne v5, v3, :cond_2

    aget-byte v5, v14, v10

    if-nez v5, :cond_2

    const-string v2, "GET DATA FINISH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v11, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    goto :goto_2

    :cond_2
    if-lt v15, v12, :cond_3

    aget-byte v5, v14, v8

    const/16 v13, 0x63

    if-ne v5, v13, :cond_3

    aget-byte v5, v14, v10

    const/16 v10, 0x10

    if-ne v5, v10, :cond_3

    const-string v5, "GET DATA MORE"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v11, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, v17

    const/16 v5, 0x8

    const/16 v8, 0x2400

    goto :goto_0

    :cond_3
    const-string v2, "Send Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    return-object v17

    :cond_4
    move-object/from16 v17, v10

    goto :goto_2

    :cond_5
    move-object/from16 v17, v10

    move v4, v11

    :goto_2
    invoke-virtual {v0, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_0
    move-object/from16 v17, v10

    :catch_1
    const/4 v13, 0x1

    goto :goto_3

    :catch_2
    move-object/from16 v17, v10

    move v13, v11

    :goto_3
    const-string v2, "GET DATA EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_6

    invoke-virtual {v0, v11}, Lcom/android/server/SemService;->close_Spi(I)I

    :cond_6
    return-object v17

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x0t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x1t
        0x2t
        0x4ft
        0x0t
        0x0t
    .end array-data
.end method

.method private blacklist isGRDMSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isShutdownRequested()Z
    .locals 1

    const-string p0, "SEC_ESE_Service"

    const-string/jumbo v0, "sys.shutdown.requested"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not supported to get ESEA during shutdown process"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v0, "failed to get prop: sys.shutdown.requested"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isValidPackageForSpi()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string p0, "SPI is currently not in use"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The package name currently using SPI does not match, opened : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", requested : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist parseScript([BI)Z
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, ","

    const-string v3, "TC : "

    const-string v4, "Date : "

    const-string v5, "SEC_ESE_Service"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "data is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/high16 v7, 0x200000

    if-gt v1, v7, :cond_16

    if-gez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v7, v0

    if-ge v7, v1, :cond_2

    const-string v0, "data overflow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    aget-byte v7, v0, v6

    const/16 v8, -0x20

    if-ne v7, v8, :cond_15

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v8

    if-gtz v8, :cond_3

    const-string/jumbo v0, "not supported tag e0"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    aget-byte v9, v0, v7

    and-int/lit16 v10, v9, 0xff

    const/16 v11, -0x7d

    const/16 v12, -0x7e

    const/16 v13, -0x7f

    const/16 v14, 0x80

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-ge v10, v14, :cond_4

    move/from16 v9, v16

    goto :goto_0

    :cond_4
    if-ne v9, v13, :cond_5

    move v9, v15

    goto :goto_0

    :cond_5
    if-ne v9, v12, :cond_6

    const/4 v9, 0x4

    goto :goto_0

    :cond_6
    if-ne v9, v11, :cond_7

    const/4 v9, 0x5

    goto :goto_0

    :cond_7
    move v9, v6

    :goto_0
    add-int v10, v8, v9

    move/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v10, 0x42

    if-eq v2, v1, :cond_8

    const-string v0, "data is inconsistency"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    aget-byte v2, v0, v9

    const/16 v7, 0x3f

    if-ne v2, v7, :cond_14

    add-int/lit8 v2, v9, 0x1

    aget-byte v2, v0, v2

    const/16 v7, 0x31

    if-ne v2, v7, :cond_14

    add-int/lit8 v2, v9, 0x2

    add-int/2addr v9, v15

    invoke-static {v0, v2}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v2

    add-int/2addr v2, v9

    invoke-static {v0, v9, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v4, v0, v2

    const/16 v7, -0x1f

    if-ne v4, v7, :cond_13

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v4}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v4

    aget-byte v7, v0, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v4

    aget-byte v3, v0, v2

    const/16 v4, -0x1e

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v4

    if-gtz v4, :cond_9

    const-string/jumbo v0, "not supported tag e2"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    aget-byte v3, v0, v3

    and-int/lit16 v7, v3, 0xff

    if-ge v7, v14, :cond_a

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_a
    if-ne v3, v13, :cond_b

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_b
    if-ne v3, v12, :cond_c

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_c
    if-ne v3, v11, :cond_d

    add-int/lit8 v2, v2, 0x5

    :cond_d
    :goto_1
    add-int/2addr v4, v2

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object/from16 v3, p0

    iput-object v2, v3, Lcom/android/server/SemService;->bodyData:[B

    aget-byte v2, v0, v4

    const/16 v3, -0x16

    if-ne v2, v3, :cond_11

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0, v2}, Lcom/android/server/SemServiceTools;->checkLength([BI)I

    move-result v2

    if-gtz v2, :cond_e

    const-string/jumbo v0, "not supported tag ea"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    add-int/2addr v2, v4

    if-eq v1, v2, :cond_f

    const-string/jumbo v0, "wrong length!"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_f
    invoke-static {v0, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/SemServiceTools;->ccmVerify([B[B)Z

    move-result v0

    if-eqz v0, :cond_10

    return v17

    :cond_10
    const-string v0, "Invalid signature!"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_11
    const-string v0, "Invalid script: No signature"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_12
    const-string v0, "Tag \'E2\' read error"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_13
    const-string v0, "Tag \'E1\' read error"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_14
    const-string v0, "Tag \'3F31\' read error"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_15
    const-string/jumbo v0, "unknown tag"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_16
    :goto_2
    const-string v0, "invalid data lenth"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LCCM script Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private blacklist readSkuProperty()V
    .locals 1

    const-string/jumbo v0, "ro.boot.hardware.sku"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SemService;->skuChipName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SEC_ESE_Service"

    const-string v0, "failed to get sysProp: ro.boot.hardware.sku"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist releaseSpiUsage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string p0, "SPI is currently not in use"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SPI is released by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist requestSpiUsage()Z
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v1}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v4, ""

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPI is opened by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v0

    :cond_1
    :goto_1
    const-string p0, "SEC_ESE_Service"

    const-string v0, "failed to getPackageName."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SPI is currently in use by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", wait for 0.5 sec. Retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "SEC_ESE_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in sleep "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    const-string v0, "SEC_ESE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SPI is currently in use by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SemService;->spiOpenPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist setDefaultCosNameProperty()V
    .locals 1

    :try_start_0
    const-string/jumbo p0, "ro.security.ese.cosname.default"

    sget-object v0, Lcom/android/server/SemService;->cosName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SEC_ESE_Service"

    const-string v0, "failed to set sysProp: cosname"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist startSPITimer()V
    .locals 5

    const-string v0, "SEC_ESE_Service"

    :try_start_0
    const-string/jumbo v1, "startSPITimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/SemService$SPITimeoutTask;

    invoke-direct {v2, p0}, Lcom/android/server/SemService$SPITimeoutTask;-><init>(Lcom/android/server/SemService;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const-string v1, "Timer\'s already been started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in startSPITimer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    return-void
.end method

.method private blacklist stopSPITimer()V
    .locals 5

    const-string v0, "SEC_ESE_Service"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "stopSPITimer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    return-void

    :cond_0
    const-string v2, "Timer\'s already been stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in stopSPITimer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/SemService;->SPITimeout:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public blacklist DCKLog()Ljava/lang/String;
    .locals 8

    const-string v0, "Close Fail "

    const-string v1, "Save Exception "

    const-string v2, "DP :DK"

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->getEncodedDCKLog()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/log/sse4"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "chmod a+r -R /data/log/sse4"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    throw p0

    :cond_1
    :goto_4
    return-object p0
.end method

.method public blacklist ICD()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string p0, "ICD Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniICD()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USLE Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NCDF Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public blacklist agent_SLOG(Ljava/lang/String;)V
    .locals 8

    const-string v0, "ASLog Ex "

    const-string v1, "ASLog ex "

    const-string v2, "DP : "

    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    const-string v4, "SEC_ESE_Service"

    if-nez v3, :cond_0

    const-string p0, "Agent_SLOG Permission Error"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v3, 0x12c

    :try_start_0
    new-array v5, v3, [B

    new-array v3, v3, [B

    invoke-virtual {p0, v5}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v7

    iput v6, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v7, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v5, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get SL Key ex "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "/data/log/sse5"

    const-string v5, "/data/log/sse6"

    invoke-virtual {p0, v3, v5}, Lcom/android/server/SemService;->getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {p1, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v5

    :goto_1
    move-object v5, p1

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v2, v5

    :goto_2
    move-object v5, p1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v5

    goto :goto_8

    :catch_4
    move-exception p0

    move-object v2, v5

    :goto_3
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    :catch_5
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_7
    return-void

    :catchall_3
    move-exception p0

    :goto_8
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    :catch_6
    move-exception p1

    goto :goto_a

    :cond_4
    :goto_9
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_b
    throw p0
.end method

.method public blacklist appCheckLog()Ljava/lang/String;
    .locals 15

    const-string v0, "SEC_ESE_Service"

    const-string v1, "mDL : "

    const-string v2, "SW : "

    const/16 v3, 0x15

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    const/16 v5, 0x11

    new-array v6, v5, [B

    fill-array-data v6, :array_1

    const/4 v7, 0x0

    const/16 v8, 0x2400

    const/4 v9, 0x0

    :try_start_0
    new-array v10, v8, [B

    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->open_Spi(I)I

    move-result v11

    if-eqz v11, :cond_0

    const-string v1, "S-LOG Open Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    return-object v7

    :cond_0
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {p0, v4, v3, v10, v9}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v3

    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v3, -0x2

    aget-byte v13, v4, v12

    invoke-static {v13}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, -0x1

    aget-byte v14, v4, v13

    invoke-static {v14}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, -0x70

    const/4 v14, 0x2

    if-lt v3, v14, :cond_1

    aget-byte v3, v4, v12

    if-ne v3, v10, :cond_1

    aget-byte v3, v4, v13

    if-nez v3, :cond_1

    const-string v3, "get mDL"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "Select Response Error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-array v3, v8, [B

    invoke-virtual {p0, v6, v5, v3, v9}, Lcom/android/server/SemService;->send_Data([BI[BI)I

    move-result v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v5, -0x2

    aget-byte v8, v3, v2

    invoke-static {v8}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget-byte v12, v3, v8

    invoke-static {v12}, Lcom/android/server/SemServiceTools;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v5, v14, :cond_2

    aget-byte v2, v3, v2

    if-ne v2, v10, :cond_2

    aget-byte v2, v3, v8

    if-nez v2, :cond_2

    const-string v2, "M Select Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v2, "M Select Response Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v3}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nMSG : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move v11, v9

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET DATA Error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v1

    move v11, v9

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET DATA EXCEPTION "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v11, :cond_3

    invoke-virtual {p0, v9}, Lcom/android/server/SemService;->close_Spi(I)I

    :cond_3
    return-object v7

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x10t
        -0x60t
        0x0t
        0x0t
        0x2t
        0x20t
        0x20t
        0x3t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xct
        -0x60t
        0x0t
        0x0t
        0x8t
        0x70t
        -0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
    .end array-data
.end method

.method public native blacklist checkSeStatus([B[B)I
.end method

.method public blacklist check_Network(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_1

    const-string p0, "ICCC Device Status Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_0
    const-string p1, "F-R-NC"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/SemService$1;

    invoke-direct {p1, p0}, Lcom/android/server/SemService$1;-><init>(Lcom/android/server/SemService;)V

    iput-object p1, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "F-UR-NC"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/SemService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/SemService;->CMCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist check_SeState([B[B)I
    .locals 3

    const-string v0, "Start checkSeState"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->checkSeStatus([B[B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to check_SeState, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x5a

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsatisfield check_SeState, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NoClassDef check_SeState, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return p1
.end method

.method public native blacklist closeDriverSpi()I
.end method

.method public native blacklist closeSpi(I)I
.end method

.method public blacklist closeSpiDriver()I
    .locals 4

    const-string v0, "closeSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    const-string p0, "closeSpiDriver Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->closeDriverSpi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist close_Spi(I)I
    .locals 2

    const-string v0, "Start close_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "close_Spi Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, -0xc8

    return p0

    :cond_2
    if-nez p1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result p1

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to close_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NoClassDef close_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsatisfield close_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public native blacklist coldReset()I
.end method

.method public blacklist continue_attestation(Ljava/lang/String;I[B)I
    .locals 3

    const-string v0, "continue_atteestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    const/16 v0, -0x5c

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SemService;->continueattestation(Ljava/lang/String;I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "USLE Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NCDF Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "result : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public native blacklist continueattestation(Ljava/lang/String;I[B)I
.end method

.method public native blacklist deactivateCards(I[[B[II)I
.end method

.method public native blacklist deactivateCardsAID(II[[B[II[[B[II[[B[II)I
.end method

.method public blacklist deactivate_Cards(I[Ljava/lang/String;[II)I
    .locals 7

    const-string v0, "Start deactivate_Cards"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p4, [[B

    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v2, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v2

    const/16 v3, -0x5b

    if-nez v2, :cond_0

    const-string p0, "deactivate_Cards Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v2}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p4, :cond_4

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v3

    array-length v5, v4

    const/4 v6, 0x2

    invoke-static {v4, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Package Name : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to deactivate_Cards, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsatisfield deactivate_Cards, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NoClassDef deactivate_Cards, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2
.end method

.method public blacklist deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p5

    const-string v3, "#"

    const-string v0, "Start deactivate_Cards"

    const-string v13, "SEC_ESE_Service"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v2, [[B

    new-array v7, v2, [[B

    new-array v10, v2, [[B

    new-array v8, v2, [I

    new-array v11, v2, [I

    iget-object v0, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v5}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v5, -0x5b

    if-nez v0, :cond_0

    const-string v0, "deactivate_CardsAID Permission Error"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-direct {v1}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0xc8

    return v0

    :cond_1
    iget-object v0, v1, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v5

    :cond_2
    invoke-direct {v1}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, -0xa

    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "A Size : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v5, v2, :cond_8

    :try_start_0
    aget-object v0, p3, v5

    if-nez v0, :cond_4

    const-string v0, "element is null"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v15, "*"

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ""

    if-eqz v15, :cond_5

    :try_start_1
    const-string v15, "[*]"

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v7, v9

    if-eqz v0, :cond_7

    array-length v0, v0

    aput v0, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v10, v12

    if-eqz v0, :cond_7

    array-length v0, v0

    aput v0, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v4, v6

    if-eqz v0, :cond_7

    array-length v0, v0

    aput v0, p4, v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DDA Exception "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DDA Null Point Exception "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :try_start_2
    const-string v0, "DDA Start "

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/SemService;->deactivateCardsAID(II[[B[II[[B[II[[B[II)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to deactivate_Cards, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoClassDef deactivate_Cards, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsatisfield deactivate_Cards, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v14, 0x0

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v14
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, ""

    const-string v3, "SEC_ESE_Service"

    const-string v4, "\nSCP11 Cert : "

    const-string v5, "\nESEK_Cert : "

    const-string v6, "\n"

    const-string v7, "\nDPD : "

    const-string v8, "\n***SemService EDS***\n[SCRS LIST]"

    :try_start_0
    const-string/jumbo v9, "ro.security.ese.cosname"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "not support eSE device: can\'t dump"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "DUMP MANAGER LOG START"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v2, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Permission Denial: can\'t dump"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "invalid parameters dump"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p1, v3

    goto/16 :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v9}, Lcom/android/server/SemServiceAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v11, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v10, v9, v8, v11}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    iget-object v10, v0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v11, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v10, v9, v8, v11}, Lcom/android/server/SemServiceAccessControl;->addAllowedPackage(Ljava/lang/String;ILcom/android/server/SemServiceAccessControl$PackageList;)V

    invoke-direct {v0}, Lcom/android/server/SemService;->getSCRSActivationList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0}, Lcom/android/server/SemService;->getAccessRule()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/SemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/server/SemService;->appCheckLog()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/SemService;->get_ESEA()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/server/SemService;->get_DPDLog()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/server/SemService;->DCKLog()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 p1, v3

    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/SemService;->supportEsek:Z

    const/16 v16, 0x0

    if-eqz v3, :cond_3

    const-string v3, "/efs/sec_efs/esek/esek_cert.dat"

    const/4 v1, 0x0

    move-object/from16 p3, v9

    new-array v9, v1, [Ljava/lang/String;

    invoke-static {v3, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SemServiceTools;->readFileBytes(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "/efs/sec_efs/esek/scp11_cert.dat"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v9, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SemServiceTools;->readFileBytes(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object/from16 p3, v9

    move-object/from16 v1, v16

    move-object v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/SemService;->start_SLOG()V

    invoke-direct {v0, v8}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v10}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v4

    invoke-direct {v0, v12}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v5

    invoke-direct {v0, v11}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v15

    invoke-direct {v0, v13}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v14

    iget-boolean v14, v0, Lcom/android/server/SemService;->supportEsek:Z

    if-eqz v14, :cond_6

    if-eqz v3, :cond_4

    invoke-direct {v0, v3}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object/from16 v3, v16

    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {v0, v1}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v1, v16

    goto :goto_2

    :cond_6
    move-object/from16 v1, v16

    move-object v3, v1

    :goto_2
    iget-object v14, v0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/android/server/SemService;->stop_SLOG()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v19, :cond_7

    const-string v1, "\nSEMSVC[4]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v19

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-boolean v1, v0, Lcom/android/server/SemService;->supportEsek:Z

    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz v16, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v1, v0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    move-object/from16 v4, p3

    invoke-virtual {v1, v4, v3}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    iget-object v1, v0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/SemServiceAccessControl;->removeAllowedPackage(Ljava/lang/String;Lcom/android/server/SemServiceAccessControl$PackageList;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/SemService;->printEnhancedDump()V

    const-string v0, "DUMP MANAGER LOG END"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p1

    :try_start_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v3

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DUMP MANAGER ERROR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v3

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DUMP MANAGER EXCEPTION "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method public native blacklist eSEAidFactoryReset([BI)I
.end method

.method public native blacklist eSEFactoryReset()I
.end method

.method public native blacklist eSEFullFactoryReset()I
.end method

.method public native blacklist eSELowFactoryReset()I
.end method

.method public blacklist eSE_AidFactoryReset([BI)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    const/16 v0, -0x5a

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->eSEAidFactoryReset([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "USLE Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NCDF Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_FactoryReset()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    const/16 v0, -0x5a

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_FullFactoryReset()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    const/16 v0, -0x5a

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSEFullFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist eSE_LowFactoryReset()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    const/16 v0, -0x5a

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->eSELowFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist esekCertificateCheck()I
.end method

.method public blacklist esek_certificate_check()I
    .locals 4

    const-string v0, "Start esek_certificate_check"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    const-string p0, "esek_certificate_check Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->esekCertificateCheck()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist getAtr()I
.end method

.method public blacklist getAtr_Spi()I
    .locals 3

    const-string v0, "Start getAtr"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getAtr Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->getAtr()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getAtr_Spi, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NoClassDef getAtr_Spi, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsatisfield getAtr_Spi, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public native blacklist getCPLC14mode([B)I
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 6

    const-string v0, "GetCPLC14mode Len "

    const-string v1, "Start GetCPLC14mode"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "getCPLC14mode Permission Error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    if-gtz v3, :cond_2

    const-string/jumbo v0, "no data to be returned"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const/16 v0, 0x3e8

    if-ge v3, v0, :cond_3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SemServiceTools;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "data overflow"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to getCPLC14mode, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v4
.end method

.method public native blacklist getESEA([B)I
.end method

.method public native blacklist getHQMMemory([B)I
.end method

.method public blacklist getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x19000

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object p2

    :catch_0
    :cond_2
    return-object p1
.end method

.method public blacklist get_DPDLog()Ljava/lang/String;
    .locals 5

    const-string v0, "getDPDLog Len "

    const-string v1, "Start get_DPDLog"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "get_DPDLog Permission Error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->getDPDLog()[B

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    invoke-static {v1}, Lcom/android/server/SemServiceTools;->getHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to getESEA, "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v3
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 8

    const-string v0, "getESEA Return0 : "

    const-string v1, "getESEA Len "

    const-string v2, "Start get_ESEA"

    const-string v3, "SEC_ESE_Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x400

    new-array v4, v2, [B

    iget-object v5, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v5, v6}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string p0, "get_ESEA Permission Error"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    return-object v6

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v6

    :cond_2
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/SemService;->getESEA([B)I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    if-gtz v5, :cond_3

    const-string/jumbo v0, "no data to be returned"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    if-ge v5, v2, :cond_4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_4
    const-string v0, "data overflow"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getESEA, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v6
.end method

.method public blacklist get_HQMMemory([B)I
    .locals 4

    const-string v0, "Start get_HQMMemory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "get_HQMMemory Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    const/16 p0, -0x5b

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getHQMMemory([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get_AttackCountCheck, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsatisfield get_AttackCountCheck, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDef get_AttackCountCheck, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2
.end method

.method public native blacklist getpkSKMS([B)I
.end method

.method public native blacklist getpkSecurity([B)I
.end method

.method public native blacklist grdmCheckRestrictedMode([B)I
.end method

.method public native blacklist grdmCheckStatusInfo()I
.end method

.method public native blacklist grdmGetAttesCert(I[B)I
.end method

.method public native blacklist grdmGetSession()I
.end method

.method public native blacklist grdmReleaseSession()I
.end method

.method public native blacklist grdmRequestKey(I[B)I
.end method

.method public declared-synchronized blacklist grdm_Check_Status()I
    .locals 5

    const-string v0, "Failed to grdm_get_attes_cert, "

    const-string v1, "Unsatisfield grdm_get_attes_cert, "

    const-string v2, "NoClassDef grdm_get_attes_cert, "

    monitor-enter p0

    :try_start_0
    const-string v3, "SEC_ESE_Service"

    const-string v4, "Start grdm_Check_Status"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    const/16 p0, -0xa

    return p0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    const/16 p0, -0x5b

    return p0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmCheckStatusInfo()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_check_restricted_mode()Ljava/lang/String;
    .locals 8

    const-string v0, "grdm_check_restricted_mode Return : "

    const-string v1, "Failed to grdm_check_restricted_mode, "

    const-string v2, "Unsatisfield grdm_check_restricted_mode, "

    const-string v3, "NoClassDef grdm_check_restricted_mode, "

    monitor-enter p0

    :try_start_0
    const-string v4, "SEC_ESE_Service"

    const-string v5, "Start grdm_check_restricted_mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v5}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x3e8

    const/4 v5, 0x0

    :try_start_1
    new-array v6, v4, [B

    invoke-virtual {p0, v6}, Lcom/android/server/SemService;->grdmCheckRestrictedMode([B)I

    move-result v7

    if-gtz v7, :cond_1

    const-string v0, "SEC_ESE_Service"

    const-string/jumbo v4, "no data to be returned"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_1
    if-ge v7, v4, :cond_2

    :try_start_2
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "SEC_ESE_Service"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_2
    :try_start_3
    const-string v0, "SEC_ESE_Service"

    const-string v4, "data overflow"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SEC_ESE_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v5

    :cond_3
    :goto_1
    :try_start_5
    sget-object v0, Lcom/android/server/SemService;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_get_attes_cert(I[B)I
    .locals 5

    const-string v0, "Failed to grdm_get_attes_cert, "

    const-string v1, "Unsatisfield grdm_get_attes_cert, "

    const-string v2, "NoClassDef grdm_get_attes_cert, "

    monitor-enter p0

    :try_start_0
    const-string v3, "SEC_ESE_Service"

    const-string v4, "Start grdm_get_attes_cert"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    const/16 p0, -0xa

    return p0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    const/16 p0, -0x5b

    return p0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmGetAttesCert(I[B)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "SEC_ESE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x5a

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "SEC_ESE_Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "SEC_ESE_Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x2

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist grdm_get_session()I
    .locals 5

    const-string v0, "Failed to start_request_grdm, "

    const-string v1, "Unsatisfield start_request_grdm, "

    const-string v2, "NoClassDef start_request_grdm, "

    monitor-enter p0

    :try_start_0
    const-string v3, "SEC_ESE_Service"

    const-string v4, "Start grdm_get_session"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    const/16 p0, -0xa

    return p0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    const/16 p0, -0x5b

    return p0

    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmGetSession()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iput-boolean v4, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v3, -0xb

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, -0x2

    :cond_3
    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_release_session()I
    .locals 5

    const-string v0, "Failed to grdm_release_session, "

    const-string v1, "Unsatisfield grdm_release_session, "

    const-string v2, "NoClassDef grdm_release_session, "

    monitor-enter p0

    :try_start_0
    const-string v3, "SEC_ESE_Service"

    const-string v4, "Start grdm_release_session"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    const/16 p0, -0xa

    return p0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    const/16 p0, -0x5b

    return p0

    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/SemService;->mIsOpened:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/SemService;->grdmReleaseSession()I

    move-result v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/SemService;->mIsOpened:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v3, -0xc

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SEC_ESE_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, -0x2

    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist grdm_request_key(I[B)I
    .locals 5

    const-string v0, "Failed to grdm_request_key, "

    const-string v1, "Unsatisfield grdm_request_key, "

    const-string v2, "NoClassDef grdm_request_key, "

    monitor-enter p0

    :try_start_0
    const-string v3, "SEC_ESE_Service"

    const-string v4, "Start grdm_request_key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->isGRDMSupported()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    const/16 p0, -0xa

    return p0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    const/16 p0, -0x5b

    return p0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->grdmRequestKey(I[B)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "SEC_ESE_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x5a

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "SEC_ESE_Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "SEC_ESE_Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x2

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public native blacklist handleCCM([BI)[Ljava/lang/String;
.end method

.method public native blacklist handleCCMCB([BI[BI)[Ljava/lang/String;
.end method

.method public native blacklist handleCCMScp11c([BI)I
.end method

.method public blacklist handle_CCM([BI)[Ljava/lang/String;
    .locals 3

    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "handle_CCM Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v2

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsatisfield handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NoClassDef handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v2
.end method

.method public blacklist handle_CCMCB([BI[BI)[Ljava/lang/String;
    .locals 3

    const-string v0, "Start handle_CCM"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "handle_CCM Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v2

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->handleCCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to handle_CCM, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsatisfield handle_CCM, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NoClassDef handle_CCM, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-object v2
.end method

.method public blacklist handle_CCMScp11c([BI)I
    .locals 4

    const-string v0, "BD Len "

    const-string v1, "Start handle_CCM11c"

    const-string v2, "SEC_ESE_Service"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v1, v3}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "handle_CCMScp11c Permission Error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SemService;->parseScript([BI)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CCM script error"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x9

    return p0

    :cond_2
    iget-object p1, p0, Lcom/android/server/SemService;->bodyData:[B

    if-nez p1, :cond_3

    const-string p1, "CCM data error"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/SemService;->bodyData:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/SemService;->bodyData:[B

    array-length p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCMScp11c([BI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsatisfield handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NoClassDef handle_CCM, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, -0x1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return p1
.end method

.method public blacklist isLccmSwp()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v1, -0x5b

    const-string v2, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string p0, "isLccmSwp Permission Error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->jniIsLccmSwp()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public native blacklist jniICD()I
.end method

.method public native blacklist jniIsLccmSwp()I
.end method

.method public native blacklist openDriverSpi()I
.end method

.method public native blacklist openSpi(I)I
.end method

.method public blacklist openSpiDriver()I
    .locals 4

    const-string/jumbo v0, "openSpiDriver"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    const-string/jumbo p0, "openSpiDriver Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->openDriverSpi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist open_Spi(I)I
    .locals 2

    const-string v0, "Start open_Spi"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "open_Spi Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, -0xc8

    return p0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->openSpi(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to open_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NoClassDef open_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsatisfield open_Spi, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public native blacklist printEnhancedDump()V
.end method

.method public blacklist resetForCOSU()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SEC_ESE_Service"

    const-string/jumbo v0, "resetForCOSU Permission Error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SemService;->coldReset()I

    move-result p0

    return p0
.end method

.method public native blacklist scp11CertificateCheck()I
.end method

.method public blacklist scp11_certificate_check()I
    .locals 4

    const-string v0, "Start scp11_certificate_check"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    const-string/jumbo p0, "scp11_certificate_check Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ICCC Device Status Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemService;->isShutdownRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, -0xa

    return p0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->scp11CertificateCheck()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USLE Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NCDF Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist secureLog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v1}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const-string v1, "SEC_ESE_Service"

    if-nez v0, :cond_0

    const-string p0, "SecureLog Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SemService;->getDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "S-LOG Error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "S-LOG Exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native blacklist semFactory()V
.end method

.method public blacklist sem_factory()V
    .locals 4

    const-string/jumbo v0, "sem_factory"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->semFactory()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to sem_factory, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsatisfield sem_factory, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDef sem_factory, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return-void
.end method

.method public native blacklist sendData([BI[BI)I
.end method

.method public blacklist send_Data([BI[BI)I
    .locals 2

    const-string v0, "Start send_Data"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    iget-boolean v0, p0, Lcom/android/server/SemService;->supportReeSpi:Z

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->SEAPIAccessPermission()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "send_Data Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5b

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SemService;->isValidPackageForSpi()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, -0xc8

    return p0

    :cond_2
    if-nez p4, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SemService;->stopSPITimer()V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->sendData([BI[BI)I

    move-result p1

    if-nez p4, :cond_4

    invoke-direct {p0}, Lcom/android/server/SemService;->startSPITimer()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to send_Data, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "NoClassDef send_Data, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsatisfield send_Data, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public native blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
.end method

.method public native blacklist startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I
.end method

.method public blacklist start_SLOG()V
    .locals 5

    const-string v0, "Start_SLOG"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    new-array v2, v0, [B

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v3, v4}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "Start_SLOG Permission Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getpkSecurity([B)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/server/SemService;->getpkSKMS([B)I

    move-result v4

    iput v3, p0, Lcom/android/server/SemService;->bytePublicKeySecurityLen:I

    iput v4, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SemService;->bytePublicKeyDataSecurity:[B

    iget v2, p0, Lcom/android/server/SemService;->bytePublicKeySKMSLen:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SemService;->bytePublicKeyDataSKMS:[B
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USLE Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NCDF Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist start_attestation([BI[BI)I
    .locals 3

    const-string/jumbo v0, "start_attestation"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v2, -0x5b

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v2

    :cond_2
    const/16 v0, -0x5c

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SemService;->startattestation([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "USLE Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NCDF Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0
.end method

.method public blacklist start_request_credentials([B[BLjava/lang/String;[B)I
    .locals 12

    const-string v1, "Get tList Ex "

    const-string v2, "Get tList Unsatisfield "

    const-string v3, "Get tList NoClassDef "

    const-string v0, "Start start_request_credentials"

    const-string v4, "SEC_ESE_Service"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v5}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    const/16 v5, -0x5b

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SemService;->requestSpiUsage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, -0xc8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ICCC Device Status Error"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v5

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmDAFileSupport()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeSigData()[B

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    invoke-virtual {v0}, Lcom/android/server/SemServiceAccessControl;->getScpkmTeeListData()[B

    move-result-object v10

    if-eqz v9, :cond_4

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/SemService;->startRequestCredentialsList([B[BLjava/lang/String;[B[B[B)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return v0

    :cond_4
    :goto_0
    const-string v0, "Data Error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/SemService;->startRequestCredentials([B[BLjava/lang/String;[B)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to start_request_credentials, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x5a

    goto :goto_2

    :catch_4
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsatisfield start_request_credentials, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NoClassDef start_request_credentials, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    :goto_2
    invoke-direct {p0}, Lcom/android/server/SemService;->releaseSpiUsage()V

    return p1
.end method

.method public native blacklist startattestation([BI[BI)I
.end method

.method public native blacklist stopRequestCredentials()V
.end method

.method public blacklist stop_SLOG()V
    .locals 11

    const-string v0, "Close Exception "

    const-string v1, "Close Fail "

    const-string v2, "DP : "

    const-string v3, "Save Exception "

    iget-object v4, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v4, v5}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v4

    const-string v5, "SEC_ESE_Service"

    if-nez v4, :cond_0

    const-string p0, "Stop_SLOG Permission Error"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "/data/log/sse1"

    const-string v6, "/data/log/sse2"

    iget-object v7, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {p0, v4, v6}, Lcom/android/server/SemService;->getSLogPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/server/SemService;->encData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "chmod a+r -R /data/log/sse1"

    const-string v6, "chmod a+r -R /data/log/sse2"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v7, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    move-object v10, v8

    move-object v8, v4

    move-object v4, v10

    goto :goto_2

    :catch_2
    move-exception v6

    move-object v4, v8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_11

    :catch_3
    move-exception v6

    move-object v2, v8

    move-object v4, v2

    goto :goto_2

    :cond_2
    :try_start_5
    const-string v2, "LD Null Error"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v8

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    :goto_2
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v3

    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_4
    :try_start_9
    const-string v1, "Buffer Init"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/server/SemService;->secureBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_c

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :catchall_1
    move-exception p0

    goto :goto_d

    :catch_6
    :try_start_b
    const-string p0, "Buffer Error"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7

    :catch_7
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_c

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :catch_8
    :try_start_d
    const-string p0, "Buffer Exception"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    :catch_9
    move-exception p0

    goto :goto_a

    :cond_7
    :goto_9
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_c

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_c
    return-void

    :goto_d
    if-eqz v2, :cond_9

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_e

    :catch_a
    move-exception v1

    goto :goto_f

    :cond_9
    :goto_e
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_10

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_10
    throw p0

    :catchall_2
    move-exception p0

    move-object v8, v4

    :goto_11
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw p0
.end method

.method public blacklist stop_request_credentials()V
    .locals 3

    const-string v0, "Start stop_request_credentials"

    const-string v1, "SEC_ESE_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SemService;->mSemServiceAccessControl:Lcom/android/server/SemServiceAccessControl;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0, v2}, Lcom/android/server/SemServiceAccessControl;->hasAccessPermission(Lcom/android/server/SemServiceAccessControl$PackageList;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SemService;->stopRequestCredentials()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to stop_request_credentials, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsatisfield stop_request_credentials, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NoClassDef stop_request_credentials, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist synchronizedCloseSpi(I)I
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->closeSpi(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
