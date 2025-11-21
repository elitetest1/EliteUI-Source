.class public final enum Lcom/samsung/android/authenticator/TrustedAppAssetType;
.super Ljava/lang/Enum;
.source "TrustedAppAssetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/authenticator/TrustedAppAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/authenticator/TrustedAppAssetType;

.field public static final enum blacklist PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

.field public static final enum blacklist PASS_ESE:Lcom/samsung/android/authenticator/TrustedAppAssetType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/authenticator/TrustedAppAssetType;
    .locals 2

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    sget-object v1, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/authenticator/TrustedAppAssetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;

    const-string v1, "PASS_AUTHENTICATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/TrustedAppAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    new-instance v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;

    const-string v1, "PASS_ESE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/TrustedAppAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {}, Lcom/samsung/android/authenticator/TrustedAppAssetType;->$values()[Lcom/samsung/android/authenticator/TrustedAppAssetType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->$VALUES:[Lcom/samsung/android/authenticator/TrustedAppAssetType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/authenticator/TrustedAppAssetType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/authenticator/TrustedAppAssetType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/authenticator/TrustedAppAssetType;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->$VALUES:[Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-virtual {v0}, [Lcom/samsung/android/authenticator/TrustedAppAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/authenticator/TrustedAppAssetType;

    return-object v0
.end method
