.class public abstract Landroid/database/AbstractWindowedCursor;
.super Landroid/database/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected whitelist mWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist checkPosition()V
    .locals 1

    invoke-super {p0}, Landroid/database/AbstractCursor;->checkPosition()V

    iget-object p0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/database/StaleDataException;

    const-string v0, "Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method."

    invoke-direct {p0, v0}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected greylist clearOrCreateWindow(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    return-void
.end method

.method protected greylist-max-r closeWindow()V
    .locals 1

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    :cond_0
    return-void
.end method

.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1, p2}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public whitelist getBlob(I)[B
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDouble(I)D
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getFloat(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p0

    return p0
.end method

.method public whitelist getInt(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p0

    return p0
.end method

.method public whitelist getLong(I)J
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getShort(I)S
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getShort(II)S

    move-result p0

    return p0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getType(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result p0

    return p0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .locals 0

    iget-object p0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object p0
.end method

.method public whitelist hasWindow()Z
    .locals 0

    iget-object p0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isBlob(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isFloat(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isLong(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isNull(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget p0, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, p0, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isString(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist onDeactivateOrClose()V
    .locals 0

    invoke-super {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    return-void
.end method

.method public whitelist setWindow(Landroid/database/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    :cond_0
    return-void
.end method
