.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDesktopModeLauncherImpl"
.end annotation


# instance fields
.field blacklist mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    return-void
.end method


# virtual methods
.method public blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;->mLauncher:Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;->onMessageReceived(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
