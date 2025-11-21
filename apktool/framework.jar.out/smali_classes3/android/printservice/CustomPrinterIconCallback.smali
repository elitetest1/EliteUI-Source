.class public final Landroid/printservice/CustomPrinterIconCallback;
.super Ljava/lang/Object;
.source "CustomPrinterIconCallback.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CustomPrinterIconCB"


# instance fields
.field private final greylist-max-o mObserver:Landroid/printservice/IPrintServiceClient;

.field private final greylist-max-o mPrinterId:Landroid/print/PrinterId;


# direct methods
.method constructor greylist-max-o <init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    iput-object p2, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    return-void
.end method


# virtual methods
.method public whitelist onCustomPrinterIconLoaded(Landroid/graphics/drawable/Icon;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    iget-object p0, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    invoke-interface {v0, p0, p1}, Landroid/printservice/IPrintServiceClient;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CustomPrinterIconCB"

    const-string v0, "Could not update icon"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
