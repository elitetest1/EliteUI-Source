.class final Lcom/samsung/android/authenticator/FingerprintTrustedApplication;
.super Ljava/lang/Object;
.source "FingerprintTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field static final blacklist GET_AUTH_RESULT_COMMAND:[B

.field static final blacklist SET_AUTH_CHALLENGE_COMMAND:[B

.field private static final blacklist SUCCESS:[B

.field private static final blacklist TAG:Ljava/lang/String; = "FTA"


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    new-array v1, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 3

    const/4 p0, 0x0

    const-string v0, "FTA"

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, p0, [B

    sget-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->setChallenge([B)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->getWrappedObject([B)[B

    move-result-object p0

    :cond_2
    :goto_0
    const-string p1, "command is not supported"

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_1
    const-string p1, "command is invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, p0, [B

    return-object p0
.end method

.method public blacklist getHandle()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist load()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist unload()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
