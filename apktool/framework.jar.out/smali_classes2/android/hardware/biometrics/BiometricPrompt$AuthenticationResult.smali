.class public Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mBiometricId:I

.field private blacklist mToken:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBiometricId(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mBiometricId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method


# virtual methods
.method public whitelist getAuthenticationType()I
    .locals 0

    invoke-super {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getAuthenticationType()I

    move-result p0

    return p0
.end method

.method public blacklist getBiometricId()I
    .locals 0

    iget p0, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mBiometricId:I

    return p0
.end method

.method public whitelist getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 0

    invoke-super {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/CryptoObject;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method public bridge synthetic blacklist getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0
.end method

.method public whitelist semGetToken()[B
    .locals 2

    invoke-static {}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semGetToken: token = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    return-object p0
.end method

.method public blacklist setToken([B)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    return-void
.end method
