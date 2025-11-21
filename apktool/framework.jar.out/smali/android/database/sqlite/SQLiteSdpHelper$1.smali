.class Landroid/database/sqlite/SQLiteSdpHelper$1;
.super Landroid/database/sqlite/SQLiteSdpListener;
.source "SQLiteSdpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteSdpHelper;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteSdpHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEngineRemoved()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onStateChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-static {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->-$$Nest$fgetmDatabase(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "PRAGMA sdp_unlocked"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-static {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->-$$Nest$fgetmDatabase(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "PRAGMA sdp_locked"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
