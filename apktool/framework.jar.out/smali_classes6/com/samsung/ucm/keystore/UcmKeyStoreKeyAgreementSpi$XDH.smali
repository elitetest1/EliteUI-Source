.class public Lcom/samsung/ucm/keystore/UcmKeyStoreKeyAgreementSpi$XDH;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreKeyAgreementSpi;
.source "UcmKeyStoreKeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreKeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDH"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const-string v0, "XDH"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreKeyAgreementSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
