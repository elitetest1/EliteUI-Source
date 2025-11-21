.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p3, 0x65

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    return-void
.end method

.method public blacklist onError(II)V
    .locals 2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    move v0, p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x67

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v0, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onFingerprintDetected(IIZ)V
    .locals 0

    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 0

    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 0

    return-void
.end method
