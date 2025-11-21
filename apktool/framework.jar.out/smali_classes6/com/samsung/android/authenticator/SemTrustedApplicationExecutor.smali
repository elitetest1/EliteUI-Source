.class public Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.super Ljava/lang/Object;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;,
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.5"
.end annotation


# static fields
.field private static final blacklist PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist execute(I[B)[B
    .locals 0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCommandVersion()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getCommandVersion()I

    move-result p0

    return p0
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/authenticator/TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/authenticator/TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/authenticator/TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p0

    return p0
.end method

.method public whitelist unload(I)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result p0

    return p0
.end method
