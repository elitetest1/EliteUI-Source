.class Landroid/app/UriGrantsManager$1;
.super Landroid/util/Singleton;
.source "UriGrantsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UriGrantsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IUriGrantsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IUriGrantsManager;
    .locals 0

    const-string/jumbo p0, "uri_grants"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IUriGrantsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUriGrantsManager;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/UriGrantsManager$1;->create()Landroid/app/IUriGrantsManager;

    move-result-object p0

    return-object p0
.end method
