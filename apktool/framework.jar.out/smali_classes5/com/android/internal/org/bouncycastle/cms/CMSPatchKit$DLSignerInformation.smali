.class Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;
.super Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DLSignerInformation"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V

    return-void
.end method


# virtual methods
.method public blacklist getEncodedSignedAttributes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const-string v0, "DL"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
