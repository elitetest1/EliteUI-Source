.class public Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.source "UcmKeyStoreSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreSecretKey"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UcmKeyStoreSecretKey("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
