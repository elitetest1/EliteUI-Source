.class public Landroid/database/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor whitelist <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast p0, Landroid/database/CrossProcessCursor;

    invoke-interface {p0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .locals 1

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast p0, Landroid/database/CrossProcessCursor;

    invoke-interface {p0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onMove(II)Z
    .locals 1

    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast p0, Landroid/database/CrossProcessCursor;

    invoke-interface {p0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
