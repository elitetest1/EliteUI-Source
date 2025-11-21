.class Landroid/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/CursorAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/widget/CursorAdapter;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onChange(Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method
