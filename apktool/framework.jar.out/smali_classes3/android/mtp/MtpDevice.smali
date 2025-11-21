.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final greylist-max-o mDevice:Landroid/hardware/usb/UsbDevice;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnative_discard_event_request(Landroid/mtp/MtpDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_discard_event_request(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_delete_object(I)Z
.end method

.method private native greylist-max-o native_discard_event_request(I)V
.end method

.method private native greylist-max-o native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native greylist-max-o native_get_object(IJ)[B
.end method

.method private native greylist-max-o native_get_object_handles(III)[I
.end method

.method private native greylist-max-o native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native greylist-max-o native_get_object_size_long(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_parent(I)I
.end method

.method private native greylist-max-o native_get_partial_object(IJJ[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_partial_object_64(IJJ[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_storage_id(I)I
.end method

.method private native greylist-max-o native_get_storage_ids()[I
.end method

.method private native greylist-max-o native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native greylist-max-o native_get_thumbnail(I)[B
.end method

.method private native greylist-max-o native_import_file(II)Z
.end method

.method private native greylist-max-o native_import_file(ILjava/lang/String;)Z
.end method

.method private native greylist-max-o native_open(Ljava/lang/String;I)Z
.end method

.method private native greylist-max-o native_reap_event_request(I)Landroid/mtp/MtpEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_send_object(IJI)Z
.end method

.method private native greylist-max-o native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
.end method

.method private native blacklist native_set_device_property_init_version(Ljava/lang/String;)I
.end method

.method private native greylist-max-o native_submit_event_request()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist close()V
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist deleteObject(I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result p0

    return p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getDeviceId()I
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p0

    return p0
.end method

.method public whitelist getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getObject(II)[B
    .locals 2

    const-string/jumbo v0, "objectSize should not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Landroid/mtp/MtpDevice;->native_get_object(IJ)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist getObjectHandles(III)[I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getObjectSizeLong(II)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_size_long(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getParent(I)J
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public whitelist getPartialObject(IJJ[B)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object(IJJ[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getPartialObject64(IJJ[B)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object_64(IJJ[B)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public whitelist getStorageId(I)J
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public whitelist getStorageIds()[I
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getThumbnail(I)[B
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist importFile(ILandroid/os/ParcelFileDescriptor;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(II)Z

    move-result p0

    return p0
.end method

.method public whitelist importFile(ILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_1

    :cond_1
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object p0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p1, "close"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_submit_event_request()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Other thread is reading an event."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v1, Landroid/mtp/MtpDevice$1;

    invoke-direct {v1, p0, v0}, Landroid/mtp/MtpDevice$1;-><init>(Landroid/mtp/MtpDevice;I)V

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDevice;->native_reap_event_request(I)Landroid/mtp/MtpEvent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    throw p0
.end method

.method public whitelist sendObject(IJLandroid/os/ParcelFileDescriptor;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    move-result p0

    return p0
.end method

.method public whitelist sendObjectInfo(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setDevicePropertyInitVersion(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_set_device_property_init_version(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
