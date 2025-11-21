.class public Lcom/sec/android/iaft/IAFDService;
.super Landroid/app/Service;
.source "IAFDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDService$IAFDBinder;
    }
.end annotation


# static fields
.field static final blacklist CMD_ADDB_HOTFIXDB_UPDATE:I = 0xb

.field static final blacklist CMD_HIGHBDB_HOTFIXDB_UPDATE:I = 0xc

.field static final blacklist CMD_HOTFIX_DATA_GET:I = 0x9

.field static final blacklist CMD_IAFDDB_HOTFIXDB_UPDATE:I = 0xa

.field static final blacklist CMD_IAFD_DETECT:I = 0xd

.field static final blacklist CMD_TYPE_GETUPDATESTATUS:I = 0x5

.field static final blacklist CMD_TYPE_GETUPDATESTATUS_RESULT:I = 0x6

.field static final blacklist CMD_TYPE_PARSE:I = 0x3

.field static final blacklist CMD_TYPE_REPAIR:I = 0x2

.field static final blacklist CMD_TYPE_SHOW:I = 0x4

.field static final blacklist CMD_TYPE_START:I = 0x1

.field static final blacklist CMD_TYPE_START_SmartManagerApp:I = 0x7

.field static final blacklist CMD_TYPE_START_VocApp:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDService"


# instance fields
.field private blacklist mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist IAFDServiceInit(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0, p0}, Lcom/sec/android/iaft/IAFDService;->IAFDServiceInit(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/iaft/IAFDService$IAFDBinder;-><init>(Lcom/sec/android/iaft/IAFDService;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    new-instance v0, Lcom/sec/android/iaft/IAFDServiceImpl;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/iaft/IAFDServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/android/iaft/IAFDDiagnosis;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "pkgUserId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string v0, "checkSum"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "commandType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    iput v0, p3, Landroid/os/Message;->what:I

    invoke-virtual {p3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-virtual {p0, p3}, Lcom/sec/android/iaft/IAFDServiceImpl;->IAFDServiceHandlerMessage(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return p2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
