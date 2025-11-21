.class Landroid/telephony/satellite/SatelliteManager$30;
.super Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForCommunicationAccessStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessAllowedStateChanged$0(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;->onAccessAllowedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessAllowedStateChanged$1(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessConfigurationChanged$2(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;->onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessConfigurationChanged$3(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onAccessAllowedStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
