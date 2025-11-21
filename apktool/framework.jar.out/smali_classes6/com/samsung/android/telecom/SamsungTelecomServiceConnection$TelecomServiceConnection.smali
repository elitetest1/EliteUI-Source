.class Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "SamsungTelecomServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;Lcom/samsung/android/telecom/SamsungTelecomServiceConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "SamsungTelecomServiceConnection"

    const-string v0, "connectToSamsungTelecom - ServiceManager.addService : "

    :try_start_0
    new-instance v1, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;)V

    const/4 p0, 0x0

    invoke-interface {p2, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "samsung_telecom"

    invoke-static {p0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed linking to death."

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-virtual {p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    return-void
.end method
