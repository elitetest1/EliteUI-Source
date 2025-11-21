.class public Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private blacklist mFace:Lcom/samsung/android/bio/face/SemBioFace;

.field private blacklist mIsStrongBiometric:Z

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    iput p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mUserId:I

    iput-boolean p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public whitelist getCryptoObject()Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p0
.end method

.method public blacklist getFace()Lcom/samsung/android/bio/face/SemBioFace;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object p0
.end method

.method public whitelist getSecureInfo()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mUserId:I

    return p0
.end method

.method public blacklist isStrongBiometric()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isStrong = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBioFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return p0
.end method
