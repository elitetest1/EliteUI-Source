.class public Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;
.source "AndroidKeyStoreLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final blacklist mNamespace:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    return-void
.end method


# virtual methods
.method blacklist getNamespace()I
    .locals 0

    iget p0, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    return p0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
