.class public Landroid/os/image/DynamicSystemManager$Session;
.super Ljava/lang/Object;
.source "DynamicSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/image/DynamicSystemManager;


# direct methods
.method private constructor blacklist <init>(Landroid/os/image/DynamicSystemManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/image/DynamicSystemManager;Landroid/os/image/DynamicSystemManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemManager$Session;-><init>(Landroid/os/image/DynamicSystemManager;)V

    return-void
.end method


# virtual methods
.method public blacklist commit()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-static {p0}, Landroid/os/image/DynamicSystemManager;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Landroid/os/image/IDynamicSystemService;->setEnable(ZZ)Z

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

.method public blacklist getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-static {p0}, Landroid/os/image/DynamicSystemManager;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/image/IDynamicSystemService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

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

.method public blacklist setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-static {p0}, Landroid/os/image/DynamicSystemManager;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/os/image/IDynamicSystemService;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

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

.method public blacklist submitFromAshmem(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-static {p0}, Landroid/os/image/DynamicSystemManager;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object p0

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Landroid/os/image/IDynamicSystemService;->submitFromAshmem(J)Z

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
