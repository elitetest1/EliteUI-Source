.class public Landroid/security/OverlayNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "OverlayNetworkSecurityPolicy.java"


# instance fields
.field private final blacklist mCleartextTrafficPermitted:Z

.field private final blacklist mParent:Llibcore/net/NetworkSecurityPolicy;


# direct methods
.method public constructor blacklist <init>(Llibcore/net/NetworkSecurityPolicy;Z)V
    .locals 0

    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    iput-object p1, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mParent:Llibcore/net/NetworkSecurityPolicy;

    iput-boolean p2, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return-void
.end method


# virtual methods
.method public blacklist test-api isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mParent:Llibcore/net/NetworkSecurityPolicy;

    invoke-virtual {p0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist test-api isCleartextTrafficPermitted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return p0
.end method

.method public blacklist test-api isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/security/OverlayNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p0

    return p0
.end method
