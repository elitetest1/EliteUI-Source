.class public Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreXDHPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPrivateKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getParams()Ljava/security/spec/NamedParameterSpec;
    .locals 0

    sget-object p0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object p0
.end method

.method public whitelist test-api getScalar()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
