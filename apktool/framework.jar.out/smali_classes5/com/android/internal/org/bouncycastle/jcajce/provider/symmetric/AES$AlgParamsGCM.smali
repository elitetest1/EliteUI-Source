.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private blacklist gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    return-void

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlgorithmParameterSpec class not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "GCM"

    return-object p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object p1

    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlgorithmParameterSpec not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExtractable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object p1
.end method
