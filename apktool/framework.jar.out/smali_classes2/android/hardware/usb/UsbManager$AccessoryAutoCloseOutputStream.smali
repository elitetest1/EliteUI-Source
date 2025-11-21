.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;
.super Ljava/io/FileOutputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseOutputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

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

    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

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

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    return-void
.end method
