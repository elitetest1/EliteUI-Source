.class public Landroid/os/image/DynamicSystemManager;
.super Ljava/lang/Object;
.source "DynamicSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemManager$Session;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemManager"


# instance fields
.field private final blacklist mService:Landroid/os/image/IDynamicSystemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;
    .locals 0

    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/image/IDynamicSystemService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    return-void
.end method


# virtual methods
.method public blacklist abort()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->abort()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist closePartition()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->closePartition()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createPartition(Ljava/lang/String;JZ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/image/DynamicSystemManager$Session;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/image/IDynamicSystemService;->createPartition(Ljava/lang/String;JZ)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    new-instance p3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Landroid/os/image/DynamicSystemManager$Session;

    invoke-direct {p4, p0, p2}, Landroid/os/image/DynamicSystemManager$Session;-><init>(Landroid/os/image/DynamicSystemManager;Landroid/os/image/DynamicSystemManager-IA;)V

    invoke-direct {p3, p1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist finishInstallation()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->finishInstallation()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getActiveDsuSlot()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isInUse()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->isInUse()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isInstalled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->isInstalled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist remove()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->remove()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEnable(ZZ)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0, p1, p2}, Landroid/os/image/IDynamicSystemService;->setEnable(ZZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist startInstallation(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0, p1}, Landroid/os/image/IDynamicSystemService;->startInstallation(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist suggestScratchSize()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {p0}, Landroid/os/image/IDynamicSystemService;->suggestScratchSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
