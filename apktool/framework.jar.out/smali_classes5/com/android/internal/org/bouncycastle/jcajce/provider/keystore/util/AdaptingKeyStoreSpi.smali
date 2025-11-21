.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AdaptingKeyStoreSpi.java"


# static fields
.field public static final blacklist COMPAT_OVERRIDE:Ljava/lang/String; = "keystore.type.compat"


# instance fields
.field private final blacklist jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

.field private blacklist keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private final blacklist primaryStore:Ljava/security/KeyStoreSpi;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/KeyStoreSpi;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    return-void
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_0
    const-string v0, "keystore.type.compat"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineProbe(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :goto_2
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-void
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineProbe(Ljava/io/InputStream;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public whitelist test-api engineSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result p0

    return p0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    return-void
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-void
.end method
