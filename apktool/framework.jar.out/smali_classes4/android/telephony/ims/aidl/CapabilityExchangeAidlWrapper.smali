.class public Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
.super Ljava/lang/Object;
.source "CapabilityExchangeAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CapExchangeListener"


# instance fields
.field private final blacklist mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    return-void
.end method


# virtual methods
.method public whitelist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onPublishUpdated exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapExchangeListener"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPublishUpdated exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapExchangeListener"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote is not available"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;

    invoke-direct {v1, p0, p3}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, p0, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remote capability request exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapExchangeListener"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onRequestPublishCapabilities(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "request publish capabilities exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapExchangeListener"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote is not available"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist onUnpublish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unpublish exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapExchangeListener"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string v0, "Remote is not available"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
