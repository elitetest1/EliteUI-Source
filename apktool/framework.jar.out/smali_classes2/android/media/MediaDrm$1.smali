.class Landroid/media/MediaDrm$1;
.super Ljava/lang/Object;
.source "MediaDrm.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaDrm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaDrm$1;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/media/MediaDrm$1;->this$0:Landroid/media/MediaDrm;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Landroid/media/MediaDrm;->mService:Landroid/os/Messenger;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Landroid/media/MediaDrm$1;->this$0:Landroid/media/MediaDrm;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/media/MediaDrm;->mService:Landroid/os/Messenger;

    iget-object p0, p0, Landroid/media/MediaDrm$1;->this$0:Landroid/media/MediaDrm;

    invoke-static {p0, v0}, Landroid/media/MediaDrm;->-$$Nest$fputmContext(Landroid/media/MediaDrm;Landroid/content/Context;)V

    return-void
.end method
