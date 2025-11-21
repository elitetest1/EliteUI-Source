.class Landroid/app/SystemServiceRegistry$191;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$serviceName:Ljava/lang/String;

.field final synthetic blacklist val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SystemServiceRegistry$191;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iput-object p2, p0, Landroid/app/SystemServiceRegistry$191;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTServiceClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SystemServiceRegistry$191;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iget-object p0, p0, Landroid/app/SystemServiceRegistry$191;->val$serviceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;->createService(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
