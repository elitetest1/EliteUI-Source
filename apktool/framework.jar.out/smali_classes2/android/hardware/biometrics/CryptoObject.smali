.class public Landroid/hardware/biometrics/CryptoObject;
.super Ljava/lang/Object;
.source "CryptoObject.java"


# instance fields
.field private final greylist-max-o mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/IdentityCredential;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/PresentationSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/Signature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/KeyAgreement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist-max-o getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/crypto/Cipher;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/security/identity/IdentityCredential;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/crypto/KeyAgreement;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/crypto/Mac;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o getOpId()J
    .locals 2

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    instance-of v0, p0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/security/identity/IdentityCredential;

    invoke-virtual {p0}, Landroid/security/identity/IdentityCredential;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    :cond_2
    instance-of v0, p0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/security/identity/PresentationSession;

    invoke-virtual {p0}, Landroid/security/identity/PresentationSession;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-static {p0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/security/identity/PresentationSession;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o getSignature()Ljava/security/Signature;
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, p0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/Signature;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
