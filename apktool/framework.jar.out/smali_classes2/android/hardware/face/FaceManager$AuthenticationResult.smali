.class public Landroid/hardware/face/FaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private final blacklist mFace:Landroid/hardware/face/Face;

.field private final blacklist mIsStrongBiometric:Z

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    iput p3, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    iput-boolean p4, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public blacklist getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object p0
.end method

.method public blacklist getFace()Landroid/hardware/face/Face;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    return p0
.end method

.method public blacklist isStrongBiometric()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return p0
.end method
