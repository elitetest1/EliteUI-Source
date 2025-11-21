.class public Lcom/samsung/android/knox/SemRemoteContentManager;
.super Ljava/lang/Object;
.source "SemRemoteContentManager.java"


# static fields
.field public static final greylist ERROR:I = -0x14d

.field private static final greylist TAG:Ljava/lang/String; = "SemRemoteContentManager"


# instance fields
.field greylist mService:Lcom/samsung/android/knox/ISemRemoteContentManager;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    return-void
.end method


# virtual methods
.method public greylist cancelCopyChunks(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->cancelCopyChunks(J)V

    :cond_0
    return-void
.end method

.method public greylist copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p10}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x14d

    return p0
.end method

.method public greylist copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyFile: srcContainerId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " srcFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destContainerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemRemoteContentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist deleteFile(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public greylist getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public greylist getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public greylist getRCPInterface()Landroid/content/IRCPInterface;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SemRemoteContentManager"

    const-string v1, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist isFileExist(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist moveFiles(ILandroid/net/Uri;II)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-nez p2, :cond_0

    const-string/jumbo p0, "moveFiles uri is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    if-gez p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "moveFiles total fileCount is smaller than zero : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide v1
.end method

.method public whitelist moveFiles(ILjava/util/List;Ljava/util/List;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SemRemoteContentManager"

    const-wide/16 v1, -0x1

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid App Id : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_4

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v1

    :cond_4
    :goto_0
    const-string p0, "invalid destFilePaths"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_5
    :goto_1
    const-string p0, "invalid srcFilePaths"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public greylist registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 3

    const-string v0, "SemRemoteContentManager"

    const-string/jumbo v1, "registerRCPInterface(): My Context is "

    iget-object v2, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
