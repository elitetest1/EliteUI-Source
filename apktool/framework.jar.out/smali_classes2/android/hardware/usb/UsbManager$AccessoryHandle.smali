.class Landroid/hardware/usb/UsbManager$AccessoryHandle;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryHandle"
.end annotation


# instance fields
.field private final blacklist mInputStreamOpened:Z

.field private final blacklist mOutputStreamOpened:Z

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-boolean p2, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    iput-boolean p3, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    return-void
.end method


# virtual methods
.method public blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public blacklist isInputStreamOpened()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    return p0
.end method

.method public blacklist isOpen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isOutputStreamOpened()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    return p0
.end method
