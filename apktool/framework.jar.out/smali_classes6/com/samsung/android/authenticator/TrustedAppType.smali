.class public final enum Lcom/samsung/android/authenticator/TrustedAppType;
.super Ljava/lang/Enum;
.source "TrustedAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/authenticator/TrustedAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/authenticator/TrustedAppType;

.field public static final enum blacklist ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

.field public static final enum blacklist DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

.field public static final enum blacklist FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/authenticator/TrustedAppType;
    .locals 3

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    sget-object v1, Lcom/samsung/android/authenticator/TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    sget-object v2, Lcom/samsung/android/authenticator/TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/authenticator/TrustedAppType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/authenticator/TrustedAppType;

    const-string v1, "FINGERPRINT_TRUSTED_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    new-instance v0, Lcom/samsung/android/authenticator/TrustedAppType;

    const-string v1, "DEVICE_ROOT_KEY_TRUSTED_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    new-instance v0, Lcom/samsung/android/authenticator/TrustedAppType;

    const-string v1, "ASSET_DOWNLOADER_TRUSTED_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-static {}, Lcom/samsung/android/authenticator/TrustedAppType;->$values()[Lcom/samsung/android/authenticator/TrustedAppType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/TrustedAppType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/authenticator/TrustedAppType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/authenticator/TrustedAppType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/authenticator/TrustedAppType;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/TrustedAppType;

    invoke-virtual {v0}, [Lcom/samsung/android/authenticator/TrustedAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/authenticator/TrustedAppType;

    return-object v0
.end method
