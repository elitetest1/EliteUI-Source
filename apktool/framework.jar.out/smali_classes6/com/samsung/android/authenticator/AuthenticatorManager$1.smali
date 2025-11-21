.class synthetic Lcom/samsung/android/authenticator/AuthenticatorManager$1;
.super Ljava/lang/Object;
.source "AuthenticatorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/AuthenticatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/TrustedAppType;->values()[Lcom/samsung/android/authenticator/TrustedAppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorManager$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/authenticator/TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/TrustedAppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorManager$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I

    sget-object v1, Lcom/samsung/android/authenticator/TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/TrustedAppType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorManager$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I

    sget-object v1, Lcom/samsung/android/authenticator/TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/TrustedAppType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
