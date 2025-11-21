.class public Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
.super Ljava/lang/Object;
.source "IntrusionDetectionEventTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;
    }
.end annotation


# instance fields
.field blacklist mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;)V

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    return-void
.end method


# virtual methods
.method public whitelist addData(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist initialize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist release()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
