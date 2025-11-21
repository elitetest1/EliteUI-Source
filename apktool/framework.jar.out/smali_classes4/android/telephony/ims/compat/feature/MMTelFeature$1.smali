.class Landroid/telephony/ims/compat/feature/MMTelFeature$1;
.super Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.source "MMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/feature/MMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSms(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSmsReport(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSmsWithPdu(III[B)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist changeAudioPath(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->changeAudioPath(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist endSession(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->endSession(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getFeatureStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getFeatureState()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getSmsFormat(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isConnected(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isConnected(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isOpened()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isOpened()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onMemoryAvailable(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->onMemoryAvailable(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSmsReady(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->onSmsReady(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendDtmfEvent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendDtmfEvent(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual/range {p0 .. p7}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setRetryCount(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setRetryCount(III)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setSmsc(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setSmsc(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setVideoCrtAudio(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startLocalRingBackTone(III)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->stopLocalRingBackTone()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist turnOffIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOffIms()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist turnOnIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOnIms()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
