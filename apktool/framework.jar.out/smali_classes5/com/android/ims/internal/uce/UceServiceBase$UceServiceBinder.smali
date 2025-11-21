.class final Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
.super Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/UceServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UceServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/internal/uce/UceServiceBase;


# direct methods
.method private constructor blacklist <init>(Lcom/android/ims/internal/uce/UceServiceBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;)V

    return-void
.end method


# virtual methods
.method public blacklist createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result p0

    return p0
.end method

.method public blacklist createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result p0

    return p0
.end method

.method public blacklist createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist destroyOptionsService(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyOptionsService(I)V

    return-void
.end method

.method public blacklist destroyPresenceService(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyPresService(I)V

    return-void
.end method

.method public blacklist getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceStatus()Z
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetServiceStatus()Z

    move-result p0

    return p0
.end method

.method public blacklist isServiceStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onIsServiceStarted()Z

    move-result p0

    return p0
.end method

.method public blacklist startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result p0

    return p0
.end method

.method public blacklist stopService()Z
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onStopService()Z

    move-result p0

    return p0
.end method
