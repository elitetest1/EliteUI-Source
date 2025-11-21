.class Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;
.super Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;
.source "IntrusionDetectionEventTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->addData(Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    return-void
.end method

.method public blacklist initialize(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->initialize()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    return-void
.end method

.method public blacklist release(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->release()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    return-void
.end method
