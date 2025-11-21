.class Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->initHAL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedAcquiredInfo(II)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "help = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SemBioFaceManager"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->onAcquired(II)V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 3

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v1, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {v2, p1}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;IZ)V

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    return-void
.end method

.method public blacklist onError(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(II)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .locals 0

    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .locals 0

    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .locals 0

    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .locals 0

    return-void
.end method

.method public blacklist onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->-$$Nest$msetFidoResultData(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method public blacklist onSemAuthenticationSucceededWithBundle(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onSemImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onSemStatusUpdate(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
