.class Landroid/security/KeyStore2HalVersion;
.super Ljava/lang/Object;
.source "KeyStore2HalLatest.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSupplementaryAttestationInfoHelper(ILandroid/security/KeyStore2;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method static synthetic blacklist lambda$getSupplementaryAttestationInfoHelper$0(ILandroid/system/keystore2/IKeystoreService;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSupplementaryAttestationInfo(I)[B

    move-result-object p0

    return-object p0
.end method
