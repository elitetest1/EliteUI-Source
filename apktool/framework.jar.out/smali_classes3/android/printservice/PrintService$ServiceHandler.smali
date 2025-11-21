.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final greylist-max-o MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final greylist-max-o MSG_ON_PRINTJOB_QUEUED:I = 0x9

.field public static final greylist-max-o MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0xa

.field public static final greylist-max-o MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0x7

.field public static final greylist-max-o MSG_SET_CLIENT:I = 0xb

.field public static final greylist-max-o MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final greylist-max-o MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final greylist-max-o MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final greylist-max-o MSG_STOP_PRINTER_STATE_TRACKING:I = 0x8

.field public static final greylist-max-o MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic blacklist this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor blacklist <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/printservice/IPrintServiceClient;

    invoke-static {v0, p1}, Landroid/printservice/PrintService;->-$$Nest$fputmClient(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)V

    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p1}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->onConnected()V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->onDisconnected()V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrintJobInfo;

    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v1, Landroid/printservice/PrintJob;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v0, v1}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrintJobInfo;

    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v1, Landroid/printservice/PrintJob;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v0, v1}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrinterId;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrinterId;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrinterId;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    return-void

    :pswitch_8
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/printservice/PrintService;->-$$Nest$fputmDiscoverySession(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)V

    :cond_1
    return-void

    :pswitch_a
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {p1}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmLastSessionId(Landroid/printservice/PrintService;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0, p1}, Landroid/printservice/PrintService;->-$$Nest$fputmDiscoverySession(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)V

    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/printservice/PrintService;->-$$Nest$fputmLastSessionId(Landroid/printservice/PrintService;I)V

    iget-object p0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {p0}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot reuse session instances"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "session cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
