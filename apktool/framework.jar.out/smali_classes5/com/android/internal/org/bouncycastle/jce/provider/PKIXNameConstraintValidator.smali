.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"


# instance fields
.field blacklist validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    return-void
.end method


# virtual methods
.method public blacklist addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public blacklist checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist intersectEmptyPermittedSubtree(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmptyPermittedSubtree(I)V

    return-void
.end method

.method public blacklist intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public blacklist intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
