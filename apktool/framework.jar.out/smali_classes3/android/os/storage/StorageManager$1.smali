.class Landroid/os/storage/StorageManager$1;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "Landroid/os/storage/StorageManager$VolumeListQuery;",
        "[",
        "Landroid/os/storage/StorageVolume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/os/storage/StorageManager$VolumeListQuery;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager$1;->apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method public blacklist apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;
    .locals 2

    const-string/jumbo p0, "mount"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmUserId(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result v0

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmPackageName(Landroid/os/storage/StorageManager$VolumeListQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmFlags(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
