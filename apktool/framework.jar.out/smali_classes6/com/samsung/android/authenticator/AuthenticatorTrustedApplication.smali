.class final Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;
.super Ljava/lang/Object;
.source "AuthenticatorTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ATA"

.field private static final blacklist mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 0

    sget-object p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {p0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(Lcom/samsung/android/authenticator/TrustedAppAssetType;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHandle()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist load()I
    .locals 6

    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/authenticator/HalService;->load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tl failed. "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ATA"

    invoke-static {v0, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist unload()I
    .locals 2

    sget-object p0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->unload(Lcom/samsung/android/authenticator/TrustedAppAssetType;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tu failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ATA"

    invoke-static {v0, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
