.class final Lcom/samsung/android/authenticator/DownloadedTrustedApplication;
.super Ljava/lang/Object;
.source "DownloadedTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private final blacklist mHandle:I

.field private final blacklist mLen:J

.field private final blacklist mOffset:J

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;


# direct methods
.method constructor blacklist <init>(ILcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    iput-object p2, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    iput-object p3, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-wide p4, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mOffset:J

    iput-wide p6, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mLen:J

    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {p0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(Lcom/samsung/android/authenticator/TrustedAppAssetType;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHandle()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist load()I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    iget-object v1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    iget-wide v2, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mOffset:J

    iget-wide v4, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mLen:J

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/authenticator/HalService;->load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tl failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA"

    invoke-static {v0, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    return p0
.end method

.method public blacklist unload()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->unload(Lcom/samsung/android/authenticator/TrustedAppAssetType;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tu failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA"

    invoke-static {v0, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
