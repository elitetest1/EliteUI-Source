.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
.super Ljava/lang/Object;
.source "RemoteComposeDocument.java"


# instance fields
.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-void
.end method


# virtual methods
.method public blacklist canBeDisplayed(IIJ)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->canBeDisplayed(IIJ)Z

    move-result p0

    return p0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHeight()I

    move-result p0

    return p0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getStats()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getWidth()I

    move-result p0

    return p0
.end method

.method public blacklist hasSensorListeners([I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void
.end method

.method public blacklist invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->isUpdateDoc()Z

    move-result p0

    return p0
.end method

.method public blacklist needsRepaint()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    move-result p0

    return p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
