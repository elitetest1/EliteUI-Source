.class public abstract Landroid/net/PlatformVpnProfile;
.super Ljava/lang/Object;
.source "PlatformVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PlatformVpnProfile$PlatformVpnType;
    }
.end annotation


# static fields
.field public static final blacklist MAX_MTU_DEFAULT:I = 0x550

.field public static final whitelist TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final whitelist TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final whitelist TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6


# instance fields
.field protected final blacklist mExcludeLocalRoutes:Z

.field protected final blacklist mRequiresInternetValidation:Z

.field protected final blacklist mType:I


# direct methods
.method constructor blacklist <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/PlatformVpnProfile;->mType:I

    iput-boolean p2, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    iput-boolean p3, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return-void
.end method

.method public static blacklist fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/PlatformVpnProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown VPN Profile type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final whitelist areLocalRoutesExcluded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    return p0
.end method

.method public final whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return p0
.end method

.method public final whitelist getTypeString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown VPN profile type"

    return-object p0

    :cond_0
    const-string p0, "IKEv2/IPsec RSA Digital Signature"

    return-object p0

    :cond_1
    const-string p0, "IKEv2/IPsec Preshared key"

    return-object p0

    :cond_2
    const-string p0, "IKEv2/IPsec Username/Password"

    return-object p0
.end method

.method public final whitelist isInternetValidationRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return p0
.end method

.method public abstract blacklist toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
