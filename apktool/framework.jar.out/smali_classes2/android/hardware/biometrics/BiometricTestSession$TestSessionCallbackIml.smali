.class Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;
.super Landroid/hardware/biometrics/ITestSessionCallback$Stub;
.source "BiometricTestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricTestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestSessionCallbackIml"
.end annotation


# instance fields
.field private final blacklist mSensorId:I

.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricTestSession;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/biometrics/BiometricTestSession;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;-><init>()V

    iput p2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricTestSession;ILandroid/hardware/biometrics/BiometricTestSession-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;-><init>(Landroid/hardware/biometrics/BiometricTestSession;I)V

    return-void
.end method


# virtual methods
.method public blacklist onCleanupFinished(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCleanupFinished, sensor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remaining users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "counting down"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public blacklist onCleanupStarted(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCleanupStarted, sensor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", userId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
