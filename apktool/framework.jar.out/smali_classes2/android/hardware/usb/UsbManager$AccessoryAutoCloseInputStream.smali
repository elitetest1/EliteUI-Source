.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseInputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private blacklist checkError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    return-void
.end method

.method public whitelist test-api read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    return v0
.end method

.method public whitelist test-api read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    return p1
.end method

.method public whitelist test-api read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    return p1
.end method
