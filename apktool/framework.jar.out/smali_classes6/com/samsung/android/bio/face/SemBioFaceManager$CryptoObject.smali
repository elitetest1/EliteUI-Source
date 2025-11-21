.class public final Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private blacklist mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private final blacklist mFidoRequestData:[B

.field private blacklist mFidoResultData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetFidoResultData(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    if-eqz p1, :cond_0

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    if-eqz p1, :cond_0

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    if-eqz p1, :cond_0

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method private blacklist setFidoResultData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-void
.end method


# virtual methods
.method public blacklist getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method public blacklist getCipher()Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFidoRequestData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-object p0
.end method

.method public whitelist getFidoResultData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-object p0
.end method

.method public blacklist getMac()Ljavax/crypto/Mac;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOpId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSignature()Ljava/security/Signature;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
