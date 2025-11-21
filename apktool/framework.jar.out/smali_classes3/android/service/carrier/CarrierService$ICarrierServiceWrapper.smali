.class public Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
.super Landroid/service/carrier/ICarrierService$Stub;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICarrierServiceWrapper"
.end annotation


# static fields
.field public static final greylist-max-o KEY_CONFIG_BUNDLE:Ljava/lang/String; = "config_bundle"

.field public static final greylist-max-o RESULT_ERROR:I = 0x1

.field public static final greylist-max-o RESULT_OK:I


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/carrier/CarrierService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-static {p0, p1, p2, p3}, Landroid/service/carrier/CarrierService;->access$000(Landroid/service/carrier/CarrierService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCarrierConfig(ILandroid/service/carrier/CarrierIdentifier;Landroid/os/ResultReceiver;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config_bundle"

    iget-object p0, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-virtual {p0, p1, p2}, Landroid/service/carrier/CarrierService;->onLoadConfig(ILandroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in onLoadConfig: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarrierService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
