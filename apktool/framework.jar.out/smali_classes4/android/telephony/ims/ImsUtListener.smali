.class public Landroid/telephony/ims/ImsUtListener;
.super Ljava/lang/Object;
.source "ImsUtListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsUtListener"


# instance fields
.field private greylist-max-o mServiceInterface:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    return-void
.end method


# virtual methods
.method public blacklist getListenerInterface()Lcom/android/ims/internal/IImsUtListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    return-object p0
.end method

.method public whitelist onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "onSupplementaryServiceIndication: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationCallBarringQueried: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationCallForwardQueried: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationCallWaitingQueried: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationQueried: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationQueryFailed: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationUpdateFailed: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onUtConfigurationUpdated(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImsUtListener"

    const-string/jumbo p1, "utConfigurationUpdated: remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
